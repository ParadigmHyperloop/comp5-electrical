/** @file sys_main.c 
*   @brief this file contains example command sequences and functions to interface with the bq79606-Q1 from a microcontroller.
*   @author Vince Toledo - Texas Instruments Inc.
*   @date August 2019
*   @version 2.0
*   @note Built with CCS for Hercules Version: 8.1.0.00011
*
*   This file contains an empty main function,
*   which can be used for the application.
*/

/* 
* Copyright (C) 2009-2016 Texas Instruments Incorporated - www.ti.com 
* 
* 
*  Redistribution and use in source and binary forms, with or without 
*  modification, are permitted provided that the following conditions 
*  are met:
*
*    Redistributions of source code must retain the above copyright 
*    notice, this list of conditions and the following disclaimer.
*
*    Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in the 
*    documentation and/or other materials provided with the   
*    distribution.
*
*    Neither the name of Texas Instruments Incorporated nor the names of
*    its contributors may be used to endorse or promote products derived
*    from this software without specific prior written permission.
*
*  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
*  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
*  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT 
*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
*  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
*  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*
*/


/* USER CODE BEGIN (0) */
/*
 *  This code was written for the TMS570LS04x Launchpad Board, modified to remove R8, allowing use of the SCI1 UART.
 *  A bq79606-Q1 EVM single-ended communication interface is connected to the Boosterpack connectors J1 and J2 as
 *  shown below. Connection of these boards must be made by the user.
 *
 *  Microcontroller: TMS570LS0432BPZQQ1 (LAUNCHXL-TMS7004 launchpad)
 *
 *  J1 pin 1 (+3V3) or J3 pin 1 for +5V     -> bq79606-Q1 EVM J8 pin 3 (VIO)
 *  J1 pin 3 (SCI1_RX)  -> bq79606-Q1 EVM J8 pin 5 (TX) **remove R8 from TMS570LS04x Launchpad
 *  J1 pin 4 (SCI1_TX)  -> bq79606-Q1 EVM J8 pin 4 (RX)
 *  J2 pin 1 (GND)      -> bq79606-Q1 EVM J8 pin 1 (DGND)
 *  J2 pin 3 (GIOA0)    -> bq79606-Q1 EVM J8 pin 6 (nWAKE)
 *  J2 pin 4 (GIOA1)    -> bq79606-Q1 EVM J8 pin 2 (nFAULT)
*/
/* USER CODE END */

/* Include Files */

#include "sys_common.h"

/* USER CODE BEGIN (1) */
#include "bq79606.h"
/* USER CODE END */

/** @fn void main(void)
*   @brief Application main function
*   @note This function is empty by default.
*
*   This function is called after startup.
*   The user can use this function to implement the application.
*/

/* USER CODE BEGIN (2) */
int UART_RX_RDY = 0;
int RTI_TIMEOUT = 0;
/* USER CODE END */

int main(void)
{
/* USER CODE BEGIN (3) */

    //*************************************************************************************
    //NOTE:: PLEASE CHANGE "TOTALBOARDS" in bq79606.h file to change the number of devices
    //*************************************************************************************

    //VARIABLES
    BYTE response_frame[(MAXBYTES+6)*TOTALBOARDS];
    int currentBoard = 0;
    int i = 0;

    //TMS570 INITIALIZATION
    systemInit();
    gioInit();
    sciInit();
    rtiInit();
    vimInit();
    _enable_IRQ();

    //BQ79606 INIT
    Wake79606();
    delayms(7*TOTALBOARDS); //tSU(WAKE) transition time from shutdown to active - 7ms from wake receive to wake propagate for each device
    AutoAddress();
    WriteReg(0, COMM_TO, 0x00, 1, FRMWRT_ALL_NR); //disable COMM timeout because printf takes a long time between reads
    WriteReg(0, SYSFLT1_FLT_RST, 0xFFFFFF, 3, FRMWRT_ALL_NR);   //reset system faults
    WriteReg(0, SYSFLT1_FLT_MSK, 0xFFFFFF, 3, FRMWRT_ALL_NR);   //mask system faults (so we can test boards and not worry about triggering these faults accidentally)

    //SET UP MAIN ADC
    WriteReg(0, CELL_ADC_CTRL, 0x3F, 1, FRMWRT_ALL_NR);     //enable conversions for all cells
    WriteReg(0, CELL_ADC_CONF2, 0x08, 1, FRMWRT_ALL_NR);    //set continuous ADC conversions, and set minimum conversion interval
    WriteReg(0, CONTROL2, 0x01, 1, FRMWRT_ALL_NR);          //CELL_ADC_GO = 1
    delayus(3*TOTALBOARDS+901);                             //3us of re-clocking delay per board + 901us waiting for first ADC conversion to complete

    //**********
    //MAIN LOOP
    //**********
    do
    {
        //*******************
        //READ CELL VOLTAGES
        //*******************
        //reset variables
        i = 0;
        currentBoard=0;
        memset(response_frame, 0, sizeof(response_frame));

        //read back data (6 cells and 2 bytes each cell)
        ReadReg(0, VCELL1H, response_frame, 6*2, 0, FRMWRT_ALL_R);

        /*
         * ***********************************************
         * NOTE: SOME COMPUTERS HAVE ISSUES TRANSMITTING
         * A LARGE AMOUNT OF DATA VIA PRINTF STATEMENTS.
         * THE FOLLOWING PRINTOUT OF THE RESPONSE DATA
         * IS NOT GUARANTEED TO WORK ON ALL SYSTEMS.
         * ***********************************************
        */

        //PARSE, FORMAT, AND PRINT THE DATA
        printf("\n"); //start with a newline to add some extra spacing between loops
        for(currentBoard=0; currentBoard<TOTALBOARDS; currentBoard++)
        {
            //response frame actually starts with top of stack, so currentBoard is actually inverted from what it should be
            printf("BOARD %d:\t",TOTALBOARDS-currentBoard);

            //go through each byte in the current board (12 bytes = 6 cells * 2 bytes each)
            for(i=0; i<12; i+=2)
            {
                //each board responds with 32 data bytes + 6 header bytes
                //so need to find the start of each board by doing that * currentBoard
                int boardByteStart = (6*2+6)*currentBoard;

                //convert the two individual bytes of each cell into a single 16 bit data item (by bit shifting)
                uint16 rawData = (response_frame[boardByteStart+i+4] << 8) | response_frame[boardByteStart+i+5];

                //do the two's complement of the resultant 16 bit data item, and multiply by 190.73uV to get an actual voltage
                float cellVoltage = Complement(rawData,0.00019073);

                //print the voltages - it is i/2 because cells start from 1 up to 6
                //and there are 2 bytes per cell (i value is twice the cell number),
                //and it's +1 because cell names start with "Cell1"
                printf("Cell %d = %f\t", (i/2)+1, cellVoltage);
            }
            printf("\n"); //newline per board
        }

        //***********************
        //END READ CELL VOLTAGES
        //***********************

    }while(1);
    //**************
    //END MAIN LOOP
    //**************

/* USER CODE END */

    return 0;
}


/* USER CODE BEGIN (4) */
/* USER CODE END */
