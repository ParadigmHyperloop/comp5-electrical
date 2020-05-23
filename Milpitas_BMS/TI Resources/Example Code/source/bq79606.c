/*
 *  @file bq79606.c
 *
 *  @author Vince Toledo - Texas Instruments Inc.
 *  @date August 2019
 *  @version 2.0
 *  @note Built with CCS for Hercules Version: 8.1.0.00011
 */

/*****************************************************************************
 **
 **  Copyright (c) 2011-2017 Texas Instruments
 **
 ******************************************************************************/
#include "bq79606.h"

extern int UART_RX_RDY;
extern int RTI_TIMEOUT;
int bRes = 0;
int count = 10000;
uint8 pFrame[(MAXBYTES+6)*TOTALBOARDS];
BYTE bBuf[8];
BYTE bReturn = 0;
BYTE response_frame2[(MAXBYTES+6)*TOTALBOARDS];
BYTE bFrame[(2+6)*TOTALBOARDS];
int nCurrentBoard = 0;

//******
//PINGS
//******
void Wake79606() {
    // toggle wake signal
    gioSetBit(gioPORTA, 0, 0); // assert wake (active low)
    delayus(250); //250us to 300us
    gioToggleBit(gioPORTA, 0); // deassert wake
}

void CommClear(void) {
	int baudRate;
	baudRate = scilinREG->BRS;

	scilinREG->GCR1 &= ~(1U << 7U); // put SCI into reset
	scilinREG->PIO0 &= ~(1U << 2U); // disable transmit function - now a GPIO
	scilinREG->PIO3 &= ~(1U << 2U); // set output to low

	delayus(baudRate * 2); // ~= 1/BAUDRATE/16*(155+1)*1.01
	sciInit();
	sciSetBaudrate(scilinREG, BAUDRATE);
}

void CommSleepToWake(void) {
	scilinREG->GCR1 &= ~(1U << 7U); // put SCI into reset
	scilinREG->PIO0 &= ~(1U << 2U); // disable transmit function - now a GPIO
	scilinREG->PIO3 &= ~(1U << 2U); // set output to low

	delayus(250); // 250us to 300us, same as wake
	sciInit();
	sciSetBaudrate(scilinREG, BAUDRATE);
}


void CommReset(void) {
	scilinREG->GCR1 &= ~(1U << 7U); // put SCI into reset
	scilinREG->PIO0 &= ~(1U << 2U); // disable transmit function - now a GPIO
	scilinREG->PIO3 &= ~(1U << 2U); // set output to low

	delayus(500); // should cover any possible baud rate
	sciInit();

	//BASE DEVICE NOW AT 250K BAUDRATE, STACK DEVICES ARE WHATEVER BAUDRATE THEY WERE BEFORE

	//wait a bit just to make sure the microcontroller is ready
	delayus(100);

	//set microcontroller to 250k to talk to base
    sciSetBaudrate(scilinREG, 250000);

    //tell the base device to set its baudrate to the chosen BAUDRATE, and propagate to the rest of the stack
    //then set the microcontroller to the appropriate baudrate to match
    if(BAUDRATE == 1000000)
    {
        //set COMM_CTRL and DAISY_CHAIN_CTRL registers
        WriteReg(0, COMM_CTRL, 0x3C3C, 2, FRMWRT_ALL_NR);

        //ALL 606 DEVICES ARE NOW AT 1M BAUDRATE

        //set the microcontroller to 1M baudrate
        sciSetBaudrate(scilinREG, 1000000);
    }
    else if(BAUDRATE == 500000)
    {
        WriteReg(0, COMM_CTRL, 0x383C, 2, FRMWRT_ALL_NR);
        sciSetBaudrate(scilinREG, 500000);
    }
    else if(BAUDRATE == 250000)
    {
        WriteReg(0, COMM_CTRL, 0x343C, 2, FRMWRT_ALL_NR);
        sciSetBaudrate(scilinREG, 250000);
    }
    else if(BAUDRATE == 125000)
    {
        WriteReg(0, COMM_CTRL, 0x303C, 2, FRMWRT_ALL_NR);
        sciSetBaudrate(scilinREG, 125000);
    }
    else
    {
        printf("ERROR: INVALID BAUDRATE CHOSEN IN BQ79606.h FILE. Choosing default 1M baudrate:\n\n");
        WriteReg(0, COMM_CTRL, 0x3C3C, 2, FRMWRT_ALL_NR);
        sciSetBaudrate(scilinREG, 1000000);
    }

    delayus(100);
}
//**********
//END PINGS
//**********


//**********************
//AUTO ADDRESS SEQUENCE
//**********************
void AutoAddress()
{
    memset(response_frame2,0,sizeof(response_frame2)); //clear out the response frame buffer

    //dummy write to ECC_TEST (sync DLL)
    WriteReg(0,  ECC_TEST, 0x00, 1, FRMWRT_ALL_NR);

    //clear CONFIG in case it is set
    WriteReg(0, CONFIG, 0x00, 1, FRMWRT_ALL_NR);

    //enter auto addressing mode
    WriteReg(0, CONTROL1, 0x01, 1, FRMWRT_ALL_NR);

    //set addresses for all boards in daisy-chain
    for (nCurrentBoard = 0; nCurrentBoard < TOTALBOARDS; nCurrentBoard++)
    {
        WriteReg(nCurrentBoard, DEVADD_USR, nCurrentBoard, 1, FRMWRT_ALL_NR);
    }

    //set all devices as a stack device
    WriteReg(0, CONFIG, 0x02, 1, FRMWRT_ALL_NR);

    //if there's only 1 board, it's the base AND the top of stack, so change it to those
    if(TOTALBOARDS==1)
    {
        WriteReg(0, CONFIG, 0x01, 1, FRMWRT_SGL_NR);
    }
    //otherwise set the base and top of stack individually
    else
    {
        WriteReg(0, CONFIG, 0x00, 1, FRMWRT_SGL_NR);             //base
        WriteReg(TOTALBOARDS-1, CONFIG, 0x03, 1, FRMWRT_SGL_NR); //top of stack
    }

    //dummy read from ECC_TEST (sync DLL)
    ReadReg(TOTALBOARDS-1, ECC_TEST, response_frame2, 1, 0, FRMWRT_ALL_R);

//    //OPTIONAL: read back all device addresses
//    WriteReg(0, COMM_TO, 0x00, 1, FRMWRT_ALL_NR); //Disable communication timeout because printf takes a long time
//    for (nCurrentBoard = 0; nCurrentBoard < TOTALBOARDS; nCurrentBoard++) {
//        memset(response_frame2, 0, sizeof(response_frame2));
//        ReadReg(nCurrentBoard, DEVADD_USR, response_frame2, 1, 0, FRMWRT_SGL_R);
//        printf("Board %d=%02x\n",nCurrentBoard,response_frame2[4]);
//    }
}
//**************************
//END AUTO ADDRESS SEQUENCE
//**************************


//************************
//WRITE AND READ FUNCTIONS
//************************
int WriteReg(BYTE bID, uint16 wAddr, uint64 dwData, BYTE bLen, BYTE bWriteType) {
	// device address, register start address, data bytes, data length, write type (single, broadcast, stack)
	bRes = 0;
	memset(bBuf,0,sizeof(bBuf));
	switch (bLen) {
	case 1:
		bBuf[0] = dwData & 0x00000000000000FF;
		bRes = WriteFrame(bID, wAddr, bBuf, 1, bWriteType);
		break;
	case 2:
		bBuf[0] = (dwData & 0x000000000000FF00) >> 8;
		bBuf[1] = dwData & 0x00000000000000FF;
		bRes = WriteFrame(bID, wAddr, bBuf, 2, bWriteType);
		break;
	case 3:
		bBuf[0] = (dwData & 0x0000000000FF0000) >> 16;
		bBuf[1] = (dwData & 0x000000000000FF00) >> 8;
		bBuf[2] = dwData & 0x00000000000000FF;
		bRes = WriteFrame(bID, wAddr, bBuf, 3, bWriteType);
		break;
	case 4:
		bBuf[0] = (dwData & 0x00000000FF000000) >> 24;
		bBuf[1] = (dwData & 0x0000000000FF0000) >> 16;
		bBuf[2] = (dwData & 0x000000000000FF00) >> 8;
		bBuf[3] = dwData & 0x00000000000000FF;
		bRes = WriteFrame(bID, wAddr, bBuf, 4, bWriteType);
		break;
	case 5:
		bBuf[0] = (dwData & 0x000000FF00000000) >> 32;
		bBuf[1] = (dwData & 0x00000000FF000000) >> 24;
		bBuf[2] = (dwData & 0x0000000000FF0000) >> 16;
		bBuf[3] = (dwData & 0x000000000000FF00) >> 8;
		bBuf[4] = dwData & 0x00000000000000FF;
		bRes = WriteFrame(bID, wAddr, bBuf, 5, bWriteType);
		break;
	case 6:
		bBuf[0] = (dwData & 0x0000FF0000000000) >> 40;
		bBuf[1] = (dwData & 0x000000FF00000000) >> 32;
		bBuf[2] = (dwData & 0x00000000FF000000) >> 24;
		bBuf[3] = (dwData & 0x0000000000FF0000) >> 16;
		bBuf[4] = (dwData & 0x000000000000FF00) >> 8;
		bBuf[5] = dwData & 0x00000000000000FF;
		bRes = WriteFrame(bID, wAddr, bBuf, 6, bWriteType);
		break;
	case 7:
		bBuf[0] = (dwData & 0x00FF000000000000) >> 48;
		bBuf[1] = (dwData & 0x0000FF0000000000) >> 40;
		bBuf[2] = (dwData & 0x000000FF00000000) >> 32;
		bBuf[3] = (dwData & 0x00000000FF000000) >> 24;
		bBuf[4] = (dwData & 0x0000000000FF0000) >> 16;
		bBuf[5] = (dwData & 0x000000000000FF00) >> 8;
		bBuf[6] = dwData & 0x00000000000000FF;
		bRes = WriteFrame(bID, wAddr, bBuf, 7, bWriteType);
		break;
	case 8:
		bBuf[0] = (dwData & 0xFF00000000000000) >> 56;
		bBuf[1] = (dwData & 0x00FF000000000000) >> 48;
		bBuf[2] = (dwData & 0x0000FF0000000000) >> 40;
		bBuf[3] = (dwData & 0x000000FF00000000) >> 32;
		bBuf[4] = (dwData & 0x00000000FF000000) >> 24;
		bBuf[5] = (dwData & 0x0000000000FF0000) >> 16;
		bBuf[6] = (dwData & 0x000000000000FF00) >> 8;
		bBuf[7] = dwData & 0x00000000000000FF;
		bRes = WriteFrame(bID, wAddr, bBuf, 8, bWriteType);
		break;
	default:
		break;
	}
	return bRes;
}

int WriteFrame(BYTE bID, uint16 wAddr, BYTE * pData, BYTE bLen, BYTE bWriteType) {
	int bPktLen = 0;
	uint8 * pBuf = pFrame;
	uint16 wCRC;
	memset(pFrame, 0x7F, sizeof(pFrame));
	*pBuf++ = 0x80 | (bWriteType) | ((bWriteType & 0x10) ? bLen - 0x01 : 0x00); //Only include blen if it is a write; Writes are 0x90, 0xB0, 0xD0
	if (bWriteType == FRMWRT_SGL_R || bWriteType == FRMWRT_SGL_NR)
	{
		*pBuf++ = (bID & 0x00FF);
	}
	*pBuf++ = (wAddr & 0xFF00) >> 8;
	*pBuf++ = wAddr & 0x00FF;

	while (bLen--)
		*pBuf++ = *pData++;

	bPktLen = pBuf - pFrame;

	wCRC = CRC16(pFrame, bPktLen);
	*pBuf++ = wCRC & 0x00FF;
	*pBuf++ = (wCRC & 0xFF00) >> 8;
	bPktLen += 2;
	//THIS SEEMS to occasionally drop bytes from the frame. Sometimes is not sending the last frame of the CRC.
	//(Seems to be caused by stack overflow, so take precautions to reduce stack usage in function calls)
	sciSend(scilinREG, bPktLen, pFrame);

	return bPktLen;
}

int ReadReg(BYTE bID, uint16 wAddr, BYTE * pData, BYTE bLen, uint32 dwTimeOut,
		BYTE bWriteType) {
	bRes = 0;
	count = 100000;
	if (bWriteType == FRMWRT_SGL_R) {
		ReadFrameReq(bID, wAddr, bLen, bWriteType);
		memset(pData, 0, sizeof(pData));
		sciEnableNotification(scilinREG, SCI_RX_INT);
		sciReceive(scilinREG, bLen + 6, pData);
		while(UART_RX_RDY == 0U && count>0) count--; /*wait*/
		//if(count == 0) printf("COUNT REACHED 0\n");
		UART_RX_RDY = 0;
		bRes = bLen + 6;
	} else if (bWriteType == FRMWRT_STK_R) {
		bRes = ReadFrameReq(bID, wAddr, bLen, bWriteType);
		memset(pData, 0, sizeof(pData));
        sciEnableNotification(scilinREG, SCI_RX_INT);
        sciReceive(scilinREG, (bLen + 6) * (TOTALBOARDS - 1), pData);
        while(UART_RX_RDY == 0U && count>0) count--; /*wait*/
        UART_RX_RDY = 0;
        bRes = (bLen + 6) * (TOTALBOARDS - 1);
	} else if (bWriteType == FRMWRT_ALL_R) {
		bRes = ReadFrameReq(bID, wAddr, bLen, bWriteType);
		memset(pData, 0, sizeof(pData));
        sciEnableNotification(scilinREG, SCI_RX_INT);
        sciReceive(scilinREG, (bLen + 6) * TOTALBOARDS, pData);
        while(UART_RX_RDY == 0U && count>0) count--; /*wait*/
        UART_RX_RDY = 0;
        bRes = (bLen + 6) * TOTALBOARDS;
	} else {
		bRes = 0;
	}
	return bRes;
}

int ReadFrameReq(BYTE bID, uint16 wAddr, BYTE bByteToReturn, BYTE bWriteType) {
	bReturn = bByteToReturn - 1;

	if (bReturn > 127)
		return 0;

	return WriteFrame(bID, wAddr, &bReturn, 1, bWriteType);
}

// CRC16 TABLE
// ITU_T polynomial: x^16 + x^15 + x^2 + 1
const uint16 crc16_table[256] = { 0x0000, 0xC0C1, 0xC181, 0x0140, 0xC301,
		0x03C0, 0x0280, 0xC241, 0xC601, 0x06C0, 0x0780, 0xC741, 0x0500, 0xC5C1,
		0xC481, 0x0440, 0xCC01, 0x0CC0, 0x0D80, 0xCD41, 0x0F00, 0xCFC1, 0xCE81,
		0x0E40, 0x0A00, 0xCAC1, 0xCB81, 0x0B40, 0xC901, 0x09C0, 0x0880, 0xC841,
		0xD801, 0x18C0, 0x1980, 0xD941, 0x1B00, 0xDBC1, 0xDA81, 0x1A40, 0x1E00,
		0xDEC1, 0xDF81, 0x1F40, 0xDD01, 0x1DC0, 0x1C80, 0xDC41, 0x1400, 0xD4C1,
		0xD581, 0x1540, 0xD701, 0x17C0, 0x1680, 0xD641, 0xD201, 0x12C0, 0x1380,
		0xD341, 0x1100, 0xD1C1, 0xD081, 0x1040, 0xF001, 0x30C0, 0x3180, 0xF141,
		0x3300, 0xF3C1, 0xF281, 0x3240, 0x3600, 0xF6C1, 0xF781, 0x3740, 0xF501,
		0x35C0, 0x3480, 0xF441, 0x3C00, 0xFCC1, 0xFD81, 0x3D40, 0xFF01, 0x3FC0,
		0x3E80, 0xFE41, 0xFA01, 0x3AC0, 0x3B80, 0xFB41, 0x3900, 0xF9C1, 0xF881,
		0x3840, 0x2800, 0xE8C1, 0xE981, 0x2940, 0xEB01, 0x2BC0, 0x2A80, 0xEA41,
		0xEE01, 0x2EC0, 0x2F80, 0xEF41, 0x2D00, 0xEDC1, 0xEC81, 0x2C40, 0xE401,
		0x24C0, 0x2580, 0xE541, 0x2700, 0xE7C1, 0xE681, 0x2640, 0x2200, 0xE2C1,
		0xE381, 0x2340, 0xE101, 0x21C0, 0x2080, 0xE041, 0xA001, 0x60C0, 0x6180,
		0xA141, 0x6300, 0xA3C1, 0xA281, 0x6240, 0x6600, 0xA6C1, 0xA781, 0x6740,
		0xA501, 0x65C0, 0x6480, 0xA441, 0x6C00, 0xACC1, 0xAD81, 0x6D40, 0xAF01,
		0x6FC0, 0x6E80, 0xAE41, 0xAA01, 0x6AC0, 0x6B80, 0xAB41, 0x6900, 0xA9C1,
		0xA881, 0x6840, 0x7800, 0xB8C1, 0xB981, 0x7940, 0xBB01, 0x7BC0, 0x7A80,
		0xBA41, 0xBE01, 0x7EC0, 0x7F80, 0xBF41, 0x7D00, 0xBDC1, 0xBC81, 0x7C40,
		0xB401, 0x74C0, 0x7580, 0xB541, 0x7700, 0xB7C1, 0xB681, 0x7640, 0x7200,
		0xB2C1, 0xB381, 0x7340, 0xB101, 0x71C0, 0x7080, 0xB041, 0x5000, 0x90C1,
		0x9181, 0x5140, 0x9301, 0x53C0, 0x5280, 0x9241, 0x9601, 0x56C0, 0x5780,
		0x9741, 0x5500, 0x95C1, 0x9481, 0x5440, 0x9C01, 0x5CC0, 0x5D80, 0x9D41,
		0x5F00, 0x9FC1, 0x9E81, 0x5E40, 0x5A00, 0x9AC1, 0x9B81, 0x5B40, 0x9901,
		0x59C0, 0x5880, 0x9841, 0x8801, 0x48C0, 0x4980, 0x8941, 0x4B00, 0x8BC1,
		0x8A81, 0x4A40, 0x4E00, 0x8EC1, 0x8F81, 0x4F40, 0x8D01, 0x4DC0, 0x4C80,
		0x8C41, 0x4400, 0x84C1, 0x8581, 0x4540, 0x8701, 0x47C0, 0x4680, 0x8641,
		0x8201, 0x42C0, 0x4380, 0x8341, 0x4100, 0x81C1, 0x8081, 0x4040 };

uint16 CRC16(BYTE *pBuf, int nLen) {
	uint16 wCRC = 0xFFFF;
	int i;

	for (i = 0; i < nLen; i++) {
		wCRC ^= (*pBuf++) & 0x00FF;
		wCRC = crc16_table[wCRC & 0x00FF] ^ (wCRC >> 8);
	}

	return wCRC;
}
//****************************
//END WRITE AND READ FUNCTIONS
//****************************

//************************
//MISCELLANEOUS FUNCTIONS
//************************
void delayus(uint16 us) {
    if (us == 0)
       return;
    else
    {
        //CHANGE THE INTERRUPT COMPARE VALUES (PERIOD OF INTERRUPT)
        //Setup compare 0 value.
        rtiREG1->CMP[0U].COMPx = 10*us; //10 ticks of clock per microsecond, so multiply by 10
        //Setup update compare 0 value.
        rtiREG1->CMP[0U].UDCPx = 10*us;

        //ENABLE THE NOTIFICATION FOR THE PERIOD WE SET
        rtiEnableNotification(rtiNOTIFICATION_COMPARE0);

        //START THE COUNTER
        rtiStartCounter(rtiCOUNTER_BLOCK0);

        //WAIT IN LOOP UNTIL THE INTERRUPT HAPPENS (HAPPENS AFTER THE PERIOD WE SET)
        //WHEN INTERRUPT HAPPENS, RTI_NOTIFICATION GETS SET TO 1 IN THAT INTERRUPT
        //GO TO notification.c -> rtiNotification() to see where RTI_TIMEOUT is set to 1
        while(RTI_TIMEOUT==0);

        //RESET THE VARIABLE TO 0, FOR THE NEXT TIME WE DO A DELAY
        RTI_TIMEOUT = 0;

        //DISABLE THE INTERRUPT NOTIFICATION
        rtiDisableNotification(rtiNOTIFICATION_COMPARE0);

        //STOP THE COUNTER
        rtiStopCounter(rtiCOUNTER_BLOCK0);

        //RESET COUNTER FOR THE NEXT TIME WE DO A DELAY
        rtiResetCounter(rtiCOUNTER_BLOCK0);
    }
}

void delayms(uint16 ms) {
    if (ms == 0)
       return;
    else
    {
        rtiREG1->CMP[0U].COMPx = 10000*ms;
        rtiREG1->CMP[0U].UDCPx = 10000*ms;
        rtiEnableNotification(rtiNOTIFICATION_COMPARE0);
        rtiStartCounter(rtiCOUNTER_BLOCK0);
        while(RTI_TIMEOUT==0);
        RTI_TIMEOUT = 0;
        rtiDisableNotification(rtiNOTIFICATION_COMPARE0);
        rtiStopCounter(rtiCOUNTER_BLOCK0);
        rtiResetCounter(rtiCOUNTER_BLOCK0);
    }
}

float Complement(uint16 rawData, float multiplier)
{
    return -1*(~rawData+1)*multiplier;
}

BOOL GetFaultStat() {

    if (!gioGetBit(gioPORTA, 1))
        return 0;
    return 1;
}

void InitDevices() {
    /*******Optional examples of some initialization functions*****/

    delayms(1);
    WriteReg(0, COMM_TO, 0x00, 1, FRMWRT_ALL_NR); //Communication timeout disabled
    WriteReg(0, TX_HOLD_OFF, 0x00, 1, FRMWRT_ALL_NR); //no transmit delay after stop bit

    /* mask all low level faults... user should unmask necessary faults */
    WriteReg(0, GPIO_FLT_MSK, 0x3F, 1, FRMWRT_ALL_NR); //mask GPIO faults
    WriteReg(0, UV_FLT_MSK, 0x3F, 1, FRMWRT_ALL_NR); //mask UV faults
    WriteReg(0, OV_FLT_MSK, 0x3F, 1, FRMWRT_ALL_NR); //mask OV faults
    WriteReg(0, UT_FLT_MSK, 0x3F, 1, FRMWRT_ALL_NR); //mask UT faults
    WriteReg(0, OT_FLT_MSK, 0x3F, 1, FRMWRT_ALL_NR); //mask OT faults
    WriteReg(0, TONE_FLT_MSK, 0x07, 1, FRMWRT_ALL_NR); //mask all tone faults
    WriteReg(0, COMM_UART_FLT_MSK, 0x07, 1, FRMWRT_ALL_NR); //mask UART faults
    WriteReg(0, COMM_UART_RC_FLT_MSK, 0x3F, 1, FRMWRT_ALL_NR); //mask UART fault contd
    WriteReg(0, COMM_UART_RR_FLT_MSK, 0x3F, 1, FRMWRT_ALL_NR);
    WriteReg(0, COMM_UART_TR_FLT_MSK, 0x03, 1, FRMWRT_ALL_NR);
    WriteReg(0, COMM_COMH_FLT_MSK, 0x3F, 1, FRMWRT_ALL_NR);
    WriteReg(0, COMM_COMH_RC_FLT_MSK, 0x3F, 1, FRMWRT_ALL_NR);
    WriteReg(0, COMM_COMH_RR_FLT_MSK, 0x3F, 1, FRMWRT_ALL_NR);
    WriteReg(0, COMM_COMH_TR_FLT_MSK, 0x03, 1, FRMWRT_ALL_NR);
    WriteReg(0, COMM_COML_FLT_MSK, 0x3F, 1, FRMWRT_ALL_NR);
    WriteReg(0, COMM_COML_RC_FLT_MSK, 0x3F, 1, FRMWRT_ALL_NR);
    WriteReg(0, COMM_COML_RR_FLT_MSK, 0x3F, 1, FRMWRT_ALL_NR);
    WriteReg(0, COMM_COML_TR_FLT_MSK, 0x03, 1, FRMWRT_ALL_NR);
    WriteReg(0, OTP_FLT_MSK, 0x07, 1, FRMWRT_ALL_NR); // mask otp faults
    WriteReg(0, RAIL_FLT_MSK, 0xFF, 1, FRMWRT_ALL_NR); //mask power rail faults
    WriteReg(0, SYSFLT1_FLT_MSK, 0x7F, 1, FRMWRT_ALL_NR); //sys fault  mask 1
    WriteReg(0, SYSFLT2_FLT_MSK, 0xFF, 1, FRMWRT_ALL_NR); //sys fault mask 2
    WriteReg(0, SYSFLT3_FLT_MSK, 0x7F, 1, FRMWRT_ALL_NR); //sys  fault  mask 3
    WriteReg(0, OVUV_BIST_FLT_MSK, 0x03, 1, FRMWRT_ALL_NR); //mask ov/uv bist faults
    WriteReg(0, OTUT_BIST_FLT_MSK, 0xFF, 1, FRMWRT_ALL_NR);

    WriteReg(0, CELL_ADC_CTRL, 0x3F, 1, FRMWRT_ALL_NR); //enables ADC for all 6 cell channels
    WriteReg(0, OVUV_CTRL, 0x3F, 1, FRMWRT_ALL_NR); //enable all cell ov/uv
    WriteReg(0, UV_THRESH, 0x53, 1, FRMWRT_ALL_NR); //sets cell UV to 2.8V
    WriteReg(0, OV_THRESH, 0x5B, 1, FRMWRT_ALL_NR); //sets cell OV to 4.3V
    //WriteReg(0, OTUT_CTRL, 0x3F, 1, FRMWRT_ALL_NR); //enable GPIO OT/UT
    //WriteReg(0, OTUT_THRESH, 0xFF, 1, FRMWRT_ALL_NR); //sets OT to 35% TSREF, UT to 75%, programmabe in 1% increment
    WriteReg(0, GPIO_ADC_CONF, 0x3F, 1, FRMWRT_ALL_NR); //configure GPIO as AUX voltage (absolute voltage, set to 0 for ratiometric)
    for (nCurrentBoard = 0; nCurrentBoard < TOTALBOARDS; nCurrentBoard++) {
        //set adc delay for each device
        WriteReg(nCurrentBoard, ADC_DELAY, 0x00, 1, FRMWRT_SGL_NR);
    }
    WriteReg(0, AUX_ADC_CONF, 0x08, 1, FRMWRT_ALL_NR); //1MHz AUX sample rate,  128 decimation  ratio
    WriteReg(0, CELL_ADC_CONF1, 0x67, 1, FRMWRT_ALL_NR); //256 decimation ratio, 1MHz sample. 1.2 Hz LPF
    WriteReg(0, CELL_ADC_CONF2, 0x00, 1, FRMWRT_ALL_NR); //single conversion
    //enable continuous sampling. Otherwise, single conversions with CONTROL2[CELL_ADC_GO]
    //WriteReg(0,CELL_ADC_CONF2, 0x0A,1,FRMWRT_ALL_NR);//continuous sampling with 5ms interval
    WriteReg(0, CONTROL2, 0x10, 1, FRMWRT_ALL_NR);// enable TSREF to give enough settling time
    delayms(2); // provides settling time for TSREF

    for (nCurrentBoard = 0; nCurrentBoard < TOTALBOARDS; nCurrentBoard++) {
        //read PARTID
        ReadReg(nCurrentBoard, PARTID, bFrame, 1, 0, FRMWRT_SGL_R);
        delayus(500);
    }
    for (nCurrentBoard = 0; nCurrentBoard < TOTALBOARDS; nCurrentBoard++) {
        //read DEV_STAT
        ReadReg(nCurrentBoard, DEV_STAT, bFrame, 1, 0, FRMWRT_SGL_R);
        delayus(500);
    }
    for (nCurrentBoard = 0; nCurrentBoard < TOTALBOARDS; nCurrentBoard++) {
        //read LOOP_STAT
        ReadReg(nCurrentBoard, LOOP_STAT, bFrame, 1, 0, FRMWRT_SGL_R);
        delayus(500);
    }
    delayus(100);
    for (nCurrentBoard = 0; nCurrentBoard < TOTALBOARDS; nCurrentBoard++) {
        //read FAULT_SUM
        ReadReg(nCurrentBoard, FAULT_SUM, bFrame, 1, 0, FRMWRT_SGL_R);
        delayus(500);
    }
    delayus(100);
    for (nCurrentBoard = 0; nCurrentBoard < TOTALBOARDS; nCurrentBoard++) {
        //read cust_crc_rslt high and low byte
        ReadReg(nCurrentBoard, CUST_CRC_RSLTH, bFrame, 2, 0, FRMWRT_SGL_R); //read Customer CRC result and update
        delayms(1);
        WriteReg(nCurrentBoard, CUST_CRCH, bFrame[5], 1, FRMWRT_SGL_NR); //update high byte
        WriteReg(nCurrentBoard, CUST_CRCL, bFrame[6], 1, FRMWRT_SGL_NR); //update low byte
    }
//  WriteReg(0, CONTROL2, 0x1D, 1, FRMWRT_ALL_NR); // OTUT EN, OVUV EN, Sample all cells

    WriteReg(0, AUX_ADC_CTRL1, 0x01, 1, FRMWRT_ALL_NR); //convert BAT with AUX ADC
    WriteReg(0, AUX_ADC_CTRL2, 0x00, 1, FRMWRT_ALL_NR); //No AUX ADC measurements from this  register
    WriteReg(0, AUX_ADC_CTRL3, 0x00, 1, FRMWRT_ALL_NR); //No AUX ADC measurements from this register
    delayus(100);
    for (nCurrentBoard = 0; nCurrentBoard < TOTALBOARDS; nCurrentBoard++) {
        //read CB_SW_STAT
        ReadReg(nCurrentBoard, CB_SW_STAT, bFrame, 1, 0, FRMWRT_SGL_R);
        delayus(500);
    }
    delayus(100);
    WriteReg(0, DIAG_CTRL2, 0x41, 1, FRMWRT_ALL_NR); //set AUX ADC to measure  cell 1

    //configure cell  balancing
    WriteReg(0, CB_CONFIG, 0x0A, 1, FRMWRT_ALL_NR); // 2 minutes duty cycle, continue on fault, odds then even
    //configure cell balancing  timers
    WriteReg(0, CB_CELL1_CTRL, 0x03, 1, FRMWRT_ALL_NR); // 3 minute balance timer to all but base device
    WriteReg(0, CB_CELL2_CTRL, 0x03, 1, FRMWRT_ALL_NR); // 3 minute balance timer to all but base device
    WriteReg(0, CB_CELL3_CTRL, 0x03, 1, FRMWRT_ALL_NR); // 3 minute balance timer to all but base device
    WriteReg(0, CB_CELL4_CTRL, 0x03, 1, FRMWRT_ALL_NR); // 3 minute balance timer to all but base device
    WriteReg(0, CB_CELL5_CTRL, 0x03, 1, FRMWRT_ALL_NR); // 3 minute balance timer to all but base device
    WriteReg(0, CB_CELL6_CTRL, 0x03, 1, FRMWRT_ALL_NR); // 3 minute balance timer to all but base device

    delayms(2);
//end init sequence
}
//***************************
//END MISCELLANEOUS FUNCTIONS
//***************************
//EOF

