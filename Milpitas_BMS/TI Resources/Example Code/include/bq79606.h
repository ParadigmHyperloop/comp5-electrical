/*
 *  @file bq79606.h
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


#ifndef BQ79606_H_
#define BQ79606_H_

#include "datatypes.h"
#include "hal_stdtypes.h"

#include "string.h"
#include "gio.h"
#include "sci.h"
#include "rti.h"
#include "reg_rti.h"
#include "sys_vim.h"
#include <math.h>
#include <stdio.h>

// User defines
#define TOTALBOARDS 1       //MUST SET: total boards in the stack
#define BAUDRATE 1000000    //set global baudrate
#define MAXBYTES 6*2        //6 CELLS, 2 BYTES EACH

#define FRMWRT_SGL_R	0x00 // single device write with response
#define FRMWRT_SGL_NR	0x10 // single device write without response
#define FRMWRT_STK_R	0x20 // stack broadcast with response
#define FRMWRT_STK_NR	0x30 // stack broadcast without response
#define FRMWRT_ALL_R	0x40 // general broadcast with response
#define FRMWRT_ALL_NR	0x50 // general broadcast without response
#define FRMWRT_REV_ALL_NR 0xE0 //broadcast write reverse direction

// Register defines
#define DEVADD_OTP				0x00 // Device address OTP
#define CONFIG					0x01 // Device configuration
#define GPIO_FLT_MSK			0x02 // GPIO fault mask
#define UV_FLT_MSK				0x03 // UV comparator fault mask
#define OV_FLT_MSK				0x04 // OV comparator fault mask
#define UT_FLT_MSK				0x05 // UT comparator fault mask
#define OT_FLT_MSK				0x06 // OT comparator fault mask
#define TONE_FLT_MSK			0x07 // Fault bus tone fault mask
#define COMM_UART_FLT_MSK		0x08 // UART fault mask
#define COMM_UART_RC_FLT_MSK	0x09 // UART receive command fault mask
#define COMM_UART_RR_FLT_MSK	0x0A // UART receive response fault mask
#define COMM_UART_TR_FLT_MSK	0x0B // UART transmit fault mask
#define COMM_COMH_FLT_MSK		0x0C // COMH bus fault mask
#define COMM_COMH_RC_FLT_MSK	0x0D // COMH bus receive command fault mask
#define COMM_COMH_RR_FLT_MSK	0x0E // COMH bus receive command fault mask
#define COMM_COMH_TR_FLT_MSK	0x0F // COMH bus transmit fault mask
#define COMM_COML_FLT_MSK		0x10 // COML bus fault mask
#define COMM_COML_RC_FLT_MSK	0x11 // COML bus receive command fault mask
#define COMM_COML_RR_FLT_MSK	0x12 // COML bus receive command fault mask
#define COMM_COML_TR_FLT_MSK	0x13 // COML bus transmit fault mask
#define OTP_FLT_MSK				0x14 // OTP page fault mask
#define RAIL_FLT_MSK			0x15 // Power rail fault mask
#define SYSFLT1_FLT_MSK			0x16 // System fault 1 mask
#define SYSFLT2_FLT_MSK			0x17 // System fault 2 mask
#define SYSFLT3_FLT_MSK			0x18 // IC system fault 3 mask
#define OVUV_BIST_FLT_MSK		0x19 // OVUV bist fault mask
#define OTUT_BIST_FLT_MSK		0x1A // OTUT bist fault mask
#define SPARE_01				0x1B // Spare register
#define SPARE_02				0x1C // Spare register
#define SPARE_03				0x1D // Spare register
#define SPARE_04				0x1E // Spare register
#define SPARE_05				0x1F // Spare register
#define COMM_CTRL				0x20 // Communication control
#define DAISY_CHAIN_CTRL		0x21 // Daisy chain RX/TX anable control
#define TX_HOLD_OFF				0x22 // Transmitter holdoff control
#define COMM_TO					0x23 // Communication timeout control
#define CELL_ADC_CONF1			0x24 // Cell ADC configuration 1
#define CELL_ADC_CONF2			0x25 // Cell ADC configuration 2
#define AUX_ADC_CONF			0x26 // Auxiliary ADC configuration
#define ADC_DELAY				0x27 // ADC configuration
#define GPIO_ADC_CONF			0x28 // GPIO_ADC result configuration
#define OVUV_CTRL				0x29 // Cell hardware protection channel control
#define UV_THRESH				0x2A // Comparator undervoltage threshold
#define OV_THRESH				0x2B // Comparator overvoltage threshold
#define OTUT_CTRL				0x2C // GPIO over and under temperature comparator control
#define OTUT_THRESH				0x2D // GPIO comparator over and under temperature threshold
#define COMP_DG					0x2E // Comparator protection deglitch
#define GPIO1_CONF				0x2F // GPIO1 configuration
#define GPIO2_CONF				0x30 // GPIO2 configuration
#define GPIO3_CONF				0x31 // GPIO3 configuration
#define GPIO4_CONF				0x32 // GPIO4 configuration
#define GPIO5_CONF				0x33 // GPIO5 configuration
#define GPIO6_CONF				0x34 // GPIO6 configuration
#define CELL1_GAIN				0x35 // Cell 1 gain calibration
#define CELL2_GAIN				0x36 // Cell 2 gain calibration
#define CELL3_GAIN				0x37 // Cell 3 gain calibration
#define CELL4_GAIN				0x38 // Cell 4 gain calibration
#define CELL5_GAIN				0x39 // Cell 5 gain calibration
#define CELL6_GAIN				0x3A // Cell 6 gain calibration
#define CELL1_OFF				0x3B // Cell 1 offset calibration
#define CELL2_OFF				0x3C // Cell 2 offset calibration
#define CELL3_OFF				0x3D // Cell 3 offset calibration
#define CELL4_OFF				0x3E // Cell 4 offset calibration
#define CELL5_OFF				0x3F // Cell 5 offset calibration
#define CELL6_OFF				0x40 // Cell 6 offset calibration
#define GPIO1_GAIN				0x41 // GPIO1 gain calibration
#define GPIO2_GAIN				0x42 // GPIO2 gain calibration
#define GPIO3_GAIN				0x43 // GPIO3 gain calibration
#define GPIO4_GAIN				0x44 // GPIO4 gain calibration
#define GPIO5_GAIN				0x45 // GPIO5 gain calibration
#define GPIO6_GAIN				0x46 // GPIO6 gain calibration
#define GPIO1_OFF				0x47 // GPIO1 offset calibration
#define GPIO2_OFF				0x48 // GPIO2 offset calibration
#define GPIO3_OFF				0x49 // GPIO3 offset calibration
#define GPIO4_OFF				0x4A // GPIO4 offset calibration
#define GPIO5_OFF				0x4B // GPIO5 offset calibration
#define GPIO6_OFF				0x4C // GPIO6 offset calibration
#define GPAUXCELL_GAIN			0x4D // GP ADC gain, CH1
#define GPAUXCELL_OFF			0x4E // GP ADC offset, CH1
#define GPAUX_GAIN				0x4F // GP ADC gain, CH2-32
#define GPAUX_OFF				0x50 // GP ADC offset, CH2-32
#define VC1COEFF1				0x51 // Cell 1 ADC gain correction
#define VC1COEFF2				0x52 // Cell 1 ADC gain correction
#define VC1COEFF3				0x53 // Cell 1 ADC gain correction
#define VC1COEFF4				0x54 // Cell 1 ADC gain correction
#define VC1COEFF5				0x55 // Cell 1 ADC gain correction
#define VC1COEFF6				0x56 // Cell 1 ADC gain correction
#define VC1COEFF7				0x57 // Cell 1 ADC gain correction
#define VC1COEFF8				0x58 // Cell 1 ADC gain correction
#define VC1COEFF9				0x59 // Cell 1 ADC offset/gain correction
#define VC1COEFF10				0x5A // Cell 1 ADC offset correction
#define VC1COEFF11				0x5B // Cell 1 ADC offset correction
#define VC1COEFF12				0x5C // Cell 1 ADC offset correction
#define VC1COEFF13				0x5D // Cell 1 ADC offset correction
#define VC1COEFF14				0x5E // Cell 1 ADC offset correction
#define VC2COEFF1				0x5F // Cell 2 ADC gain correction
#define VC2COEFF2				0x60 // Cell 2 ADC gain correction
#define VC2COEFF3				0x61 // Cell 2 ADC gain correction
#define VC2COEFF4				0x62 // Cell 2 ADC gain correction
#define VC2COEFF5				0x63 // Cell 2 ADC gain correction
#define VC2COEFF6				0x64 // Cell 2 ADC gain correction
#define VC2COEFF7				0x65 // Cell 2 ADC gain correction
#define VC2COEFF8				0x66 // Cell 2 ADC gain correction
#define VC2COEFF9				0x67 // Cell 2 ADC offset/gain correction
#define VC2COEFF10				0x68 // Cell 2 ADC offset correction
#define VC2COEFF11				0x69 // Cell 2 ADC offset correction
#define VC2COEFF12				0x6A // Cell 2 ADC offset correction
#define VC2COEFF13				0x6B // Cell 2 ADC offset correction
#define VC2COEFF14				0x6C // Cell 2 ADC offset correction
#define VC3COEFF1				0x6D // Cell 3 ADC gain correction
#define VC3COEFF2				0x6E // Cell 3 ADC gain correction
#define VC3COEFF3				0x6F // Cell 3 ADC gain correction
#define VC3COEFF4				0x70 // Cell 3 ADC gain correction
#define VC3COEFF5				0x71 // Cell 3 ADC gain correction
#define VC3COEFF6				0x72 // Cell 3 ADC gain correction
#define VC3COEFF7				0x73 // Cell 3 ADC gain correction
#define VC3COEFF8				0x74 // Cell 3 ADC gain correction
#define VC3COEFF9				0x75 // Cell 3 ADC offset/gain correction
#define VC3COEFF10				0x76 // Cell 3 ADC offset correction
#define VC3COEFF11				0x77 // Cell 3 ADC offset correction
#define VC3COEFF12				0x78 // Cell 3 ADC offset correction
#define VC3COEFF13				0x79 // Cell 3 ADC offset correction
#define VC3COEFF14				0x7A // Cell 3 ADC offset correction
#define VC4COEFF1				0x7B // Cell 4 ADC gain correction
#define VC4COEFF2				0x7C // Cell 4 ADC gain correction
#define VC4COEFF3				0x7D // Cell 4 ADC gain correction
#define VC4COEFF4				0x7E // Cell 4 ADC gain correction
#define VC4COEFF5				0x7F // Cell 4 ADC gain correction
#define VC4COEFF6				0x80 // Cell 4 ADC gain correction
#define VC4COEFF7				0x81 // Cell 4 ADC gain correction
#define VC4COEFF8				0x82 // Cell 4 ADC gain correction
#define VC4COEFF9				0x83 // Cell 4 ADC offset/gain correction
#define VC4COEFF10				0x84 // Cell 4 ADC offset correction
#define VC4COEFF11				0x85 // Cell 4 ADC offset correction
#define VC4COEFF12				0x86 // Cell 4 ADC offset correction
#define VC4COEFF13				0x87 // Cell 4 ADC offset correction
#define VC4COEFF14				0x88 // Cell 4 ADC offset correction
#define VC5COEFF1				0x89 // Cell 5 ADC gain correction
#define VC5COEFF2				0x8A // Cell 5 ADC gain correction
#define VC5COEFF3				0x8B // Cell 5 ADC gain correction
#define VC5COEFF4				0x8C // Cell 5 ADC gain correction
#define VC5COEFF5				0x8D // Cell 5 ADC gain correction
#define VC5COEFF6				0x8E // Cell 5 ADC gain correction
#define VC5COEFF7				0x8F // Cell 5 ADC gain correction
#define VC5COEFF8				0x90 // Cell 5 ADC gain correction
#define VC5COEFF9				0x91 // Cell 5 ADC offset/gain correction
#define VC5COEFF10				0x92 // Cell 5 ADC offset correction
#define VC5COEFF11				0x93 // Cell 5 ADC offset correction
#define VC5COEFF12				0x94 // Cell 5 ADC offset correction
#define VC5COEFF13				0x95 // Cell 5 ADC offset correction
#define VC5COEFF14				0x96 // Cell 5 ADC offset correction
#define VC6COEFF1				0x97 // Cell 6 ADC gain correction
#define VC6COEFF2				0x98 // Cell 6 ADC gain correction
#define VC6COEFF3				0x99 // Cell 6 ADC gain correction
#define VC6COEFF4				0x9A // Cell 6 ADC gain correction
#define VC6COEFF5				0x9B // Cell 6 ADC gain correction
#define VC6COEFF6				0x9C // Cell 6 ADC gain correction
#define VC6COEFF7				0x9D // Cell 6 ADC gain correction
#define VC6COEFF8				0x9E // Cell 6 ADC gain correction
#define VC6COEFF9				0x9F // Cell 6 ADC offset/gain correction
#define VC6COEFF10				0xA0 // Cell 6 ADC offset correction
#define VC6COEFF11				0xA1 // Cell 6 ADC offset correction
#define VC6COEFF12				0xA2 // Cell 6 ADC offset correction
#define VC6COEFF13				0xA3 // Cell 6 ADC offset correction
#define VC6COEFF14				0xA4 // Cell 6 ADC offset correction
#define VAUXCOEFF1				0xA5 // GP ADC gain correction - CH2-32
#define VAUXCOEFF2				0xA6 // GP ADC gain correction - CH2-32
#define VAUXCOEFF3				0xA7 // GP ADC gain correction - CH2-32
#define VAUXCOEFF4				0xA8 // GP ADC gain correction - CH2-32
#define VAUXCOEFF5				0xA9 // GP ADC gain correction - CH2-32
#define VAUXCOEFF6				0xAA // GP ADC gain correction - CH2-32
#define VAUXCOEFF7				0xAB // GP ADC gain correction - CH2-32
#define VAUXCOEFF8				0xAC // GP ADC gain correction - CH2-32
#define VAUXCOEFF9				0xAD // GP ADC offset/gain correction - CH2-32
#define VAUXCOEFF10				0xAE // GP ADC offset correction - CH2-32
#define VAUXCOEFF11				0xAF // GP ADC offset correction - CH2-32
#define VAUXCOEFF12				0xB0 // GP ADC offset correction - CH2-32
#define VAUXCOEFF13				0xB1 // GP ADC offset correction - CH2-32
#define VAUXCOEFF14				0xB2 // GP ADC offset correction - CH2-32                            
#define VAUXCELLCOEFF1			0xB3 // GP ADC gain correction - CH1
#define VAUXCELLCOEFF2			0xB4 // GP ADC gain correction - CH1
#define VAUXCELLCOEFF3			0xB5 // GP ADC gain correction - CH1
#define VAUXCELLCOEFF4			0xB6 // GP ADC gain correction - CH1
#define VAUXCELLCOEFF5			0xB7 // GP ADC gain correction - CH1
#define VAUXCELLCOEFF6			0xB8 // GP ADC gain correction - CH1
#define VAUXCELLCOEFF7			0xB9 // GP ADC gain correction - CH1
#define VAUXCELLCOEFF8			0xBA // GP ADC gain correction - CH1
#define VAUXCELLCOEFF9			0xBB // GP ADC offset/gain correction - CH1
#define VAUXCELLCOEFF10			0xBC // GP ADC offset correction - CH1
#define VAUXCELLCOEFF11			0xBD // GP ADC offset correction - CH1
#define VAUXCELLCOEFF12			0xBE // GP ADC offset correction - CH1
#define VAUXCELLCOEFF13			0xBF // GP ADC offset correction - CH1
#define VAUXCELLCOEFF14			0xC0 // GP ADC offset correction - CH1  
#define SPARE_06				0xC1 // Spare register
#define CUST_MISC1				0xC2 // Customer OTP memory 1
#define CUST_MISC2				0xC3 // Customer OTP memory 2
#define CUST_MISC3				0xC4 // Customer OTP memory 3
#define CUST_MISC4				0xC5 // Customer OTP memory 4
#define CUST_CRCH				0xC6 // Customer CRC high byte
#define CUST_CRCL				0xC7 // Customer CRC low byte
#define OTP_PROG_UNLOCK1A		0x100 // OTP program unlock code 1A
#define OTP_PROG_UNLOCK1B		0x101 // OTP program unlock code 1B
#define OTP_PROG_UNLOCK1C		0x102 // OTP program unlock code 1C
#define OTP_PROG_UNLOCK1D		0x103 // OTP program unlock code 1D
#define DEVADD_USR				0x104 // Programmable device address
#define CONTROL1				0x105 // Device control
#define CONTROL2				0x106 // Function enable control
#define OTP_PROG_CTRL			0x107 // OTP programming control
#define GPIO_OUT				0x108 // GPIO output control
#define CELL_ADC_CTRL			0x109 // Cell ADC control
#define AUX_ADC_CTRL1			0x10A // Auxiliary ADC control 1
#define AUX_ADC_CTRL2			0x10B // Auxiliary ADC control 2
#define AUX_ADC_CTRL3			0x10C // Auxiliary ADC control 3
#define CB_CONFIG				0x10D // Balance timer configuration
#define CB_CELL1_CTRL			0x10E // Cell 1 balance timer configuration
#define CB_CELL2_CTRL			0x10F // Cell 2 balance timer configuration
#define CB_CELL3_CTRL			0x110 // Cell 3 balance timer configuration
#define CB_CELL4_CTRL			0x111 // Cell 4 balance timer configuration
#define CB_CELL5_CTRL			0x112 // Cell 5 balance timer configuration
#define CB_CELL6_CTRL			0x113 // Cell 6 balance timer configuration
#define CB_DONE_THRESHOLD		0x114 // Cell balance done comparator threshold
#define CB_SW_EN				0x115 // Cell balancing manual switch enable
#define DIAG_CTRL1				0x116 // Diagnostic control register 1
#define DIAG_CTRL2				0x117 // Diagnostic control register 2
#define DIAG_CTRL3				0x118 // Diagnostic control register 3
#define DIAG_CTRL4				0x119 // Diagnostic control register 4
#define VC_CS_CTRL				0x11A // VC current source/sink control
#define CB_CS_CTRL				0x11B // CB current source/sink control
#define CBVC_COMP_CTRL			0x11C // CB switch comparator control
#define ECC_TEST				0x11D // ECC test
#define ECC_DATAIN0				0x11E // 1st data in byte for manual ECC test
#define ECC_DATAIN1				0x11F // 2nd data in byte for manual ECC test
#define ECC_DATAIN2				0x120 // 3rd data in byte for manual ECC test
#define ECC_DATAIN3				0x121 // 4th data in byte for manual ECC test
#define ECC_DATAIN4				0x122 // 5th data in byte for manual ECC test
#define ECC_DATAIN5				0x123 // 6th data in byte for manual ECC test
#define ECC_DATAIN6				0x124 // 7th data in byte for manual ECC test
#define ECC_DATAIN7				0x125 // 8th data in byte for manual ECC test
#define ECC_DATAIN8				0x126 // 9th data in byte for manual ECC test
#define GPIO_FLT_RST			0x127 // GPIO fault reset
#define UV_FLT_RST				0x128 // UV comparator fault reset
#define OV_FLT_RST				0x129 // OV comparator fault reset
#define UT_FLT_RST				0x12A // UT comparator fault reset
#define OT_FLT_RST				0x12B // OT comparator fault reset
#define TONE_FLT_RST			0x12C // Fault bus status reset
#define COMM_UART_FLT_RST		0x12D // UART fault status reset
#define COMM_UART_RC_FLT_RST	0x12E // UART receive command fault reset
#define COMM_UART_RR_FLT_RST	0x12F // UART receive response fault reset
#define COMM_UART_TR_FLT_RST	0x130 // UART transmit fault reset
#define COMM_COMH_FLT_RST		0x131 // COMH bus fault reset
#define COMM_COMH_RC_FLT_RST	0x132 // COMH bus receive command fault reset
#define COMM_COMH_RR_FLT_RST	0x133 // COMH bus receive command fault reset
#define COMM_COMH_TR_FLT_RST	0x134 // COMH bus transmit fault reset
#define COMM_COML_FLT_RST		0x135 // COML bus fault reset
#define COMM_COML_RC_FLT_RST	0x136 // COML bus receive command fault reset
#define COMM_COML_RR_FLT_RST	0x137 // COML bus receive command fault reset
#define COMM_COML_TR_FLT_RST	0x138 // COML bus transmit fault reset
#define OTP_FLT_RST				0x139 // OTP page fault reset
#define RAIL_FLT_RST			0x13A // Power rail reset
#define SYSFLT1_FLT_RST			0x13B // System fault 1 reset
#define SYSFLT2_FLT_RST			0x13C // System fault 2 reset
#define SYSFLT3_FLT_RST			0x13D // IC system fault 3 reset
#define OVUV_BIST_FLT_RST		0x13E // OVUV bist fault reset
#define OTUT_BIST_FLT_RST		0x13F // OTUT bist fault reset
#define OTP_PROG_UNLOCK2A		0x150 // OTP program unlock code 2A
#define OTP_PROG_UNLOCK2B		0x151 // OTP program unlock code 2B
#define OTP_PROG_UNLOCK2C		0x152 // OTP program unlock code 2C
#define OTP_PROG_UNLOCK2D		0x153 // OTP program unlock code 2D
#define SPI_CFG					0x154 // SPI master configuration
#define SPI_TX					0x155 // SPI byte to transmit
#define SPI_EXE					0x156 // SPI command execute
#define PARTID					0x200 // Customer revision information
#define SYS_FAULT1				0x201 // System fault 1 status
#define SYS_FAULT2				0x202 // System fault 2 status
#define SYS_FAULT3				0x203 // IC system fault 3 status
#define DEV_STAT				0x204 // Device status
#define LOOP_STAT				0x205 // Round robin status
#define FAULT_SUM				0x206 // Fault summary
#define VCELL1_HF				0x207 // Cell 1 voltage high byte (low pass filtered)
#define VCELL1_LF				0x208 // Cell 1 voltage low byte (low pass filtered)
#define VCELL2_HF				0x209 // Cell 2 voltage high byte (low pass filtered)
#define VCELL2_LF				0x20A // Cell 2 voltage low byte (low pass filtered)
#define VCELL3_HF				0x20B // Cell 3 voltage high byte (low pass filtered)
#define VCELL3_LF				0x20C // Cell 3 voltage low byte (low pass filtered)
#define VCELL4_HF				0x20D // Cell 4 voltage high byte (low pass filtered)
#define VCELL4_LF				0x20E // Cell 4 voltage low byte (low pass filtered)
#define VCELL5_HF				0x20F // Cell 5 voltage high byte (low pass filtered)
#define VCELL5_LF				0x210 // Cell 5 voltage low byte (low pass filtered)
#define VCELL6_HF				0x211 // Cell 6 voltage high byte (low pass filtered)
#define VCELL6_LF				0x212 // Cell 6 voltage low byte (low pass filtered)
#define CONV_CNTH				0x213 // Cell ADC conversion counter high byte
#define CONV_CNTL				0x214 // Cell ADC conversion counter low byte
#define VCELL1H					0x215 // Cell 1 voltage high byte (corrected)
#define VCELL1L					0x216 // Cell 1 voltage low byte (corrected)
#define VCELL2H					0x217 // Cell 2 voltage high byte (corrected)
#define VCELL2L					0x218 // Cell 2 voltage low byte (corrected)
#define VCELL3H					0x219 // Cell 3 voltage high byte (corrected)
#define VCELL3L					0x21A // Cell 3 voltage low byte (corrected)
#define VCELL4H					0x21B // Cell 4 voltage high byte (corrected)
#define VCELL4L					0x21C // Cell 4 voltage low byte (corrected)
#define VCELL5H					0x21D // Cell 5 voltage high byte (corrected)
#define VCELL5L					0x21E // Cell 5 voltage low byte (corrected)
#define VCELL6H					0x21F // Cell 6 voltage high byte (corrected)
#define VCELL6L					0x220 // Cell 6 voltage low byte (corrected)                       
#define VCELL_FACTCORRH			0x221 // Selected cell factory corrected high byte
#define VCELL_FACTCORRL			0x222 // Selected cell factory corrected low byte                       
#define AUX_CELLH				0x223 // AUX measurement voltage high byte
#define AUX_CELLL				0x224 // AUX measurement voltage low byte                       
#define AUX_BATH				0x225 // Cell stack voltage high byte (corrected)
#define AUX_BATL				0x226 // Cell stack voltage low byte (corrected)
#define AUX_REF2H				0x227 // Bandgap 1 measurement voltage high byte
#define AUX_REF2L				0x228 // Bandgap 1 measurement voltage low byte                       
#define AUX_ZEROH				0x229 // ZERO reference voltage high byte
#define AUX_ZEROL				0x22A // ZERO reference voltage low byte                       
#define AUX_AVDDH				0x22B // AVDD LDO voltage output high byte
#define AUX_AVDDL				0x22C // AVDD LDO voltage output low byte             
#define AUX_GPIO1H				0x22D // GPIO1 voltage high byte (corrected)
#define AUX_GPIO1L				0x22E // GPIO1 voltage low byte (corrected)
#define AUX_GPIO2H				0x22F // GPIO2 voltage high byte (corrected)
#define AUX_GPIO2L				0x230 // GPIO2 voltage low byte (corrected)
#define AUX_GPIO3H				0x231 // GPIO3 voltage high byte (corrected)
#define AUX_GPIO3L				0x232 // GPIO3 voltage low byte (corrected)
#define AUX_GPIO4H				0x233 // GPIO4 voltage high byte (corrected)
#define AUX_GPIO4L				0x234 // GPIO4 voltage low byte (corrected)
#define AUX_GPIO5H				0x235 // GPIO5 voltage high byte (corrected)
#define AUX_GPIO5L				0x236 // GPIO5 voltage low byte (corrected)
#define AUX_GPIO6H				0x237 // GPIO6 voltage high byte (corrected)
#define AUX_GPIO6L				0x238 // GPIO6 voltage low byte (corrected)
#define AUX_FACTCORRH			0x239 // Selected GPIO factory corrected high byte
#define AUX_FACTCORRL			0x23A // Selected GPIO factory corrected low byte                       
#define DIE_TEMPH				0x23B // Die junction temperature high byte                       
#define DIE_TEMPL				0x23C // Die junction temperature low byte                       
#define AUX_REF3H				0x23D // Bandgap 2 voltage output high byte                       
#define AUX_REF3L				0x23E // Bandgap 2 voltage output low byte                       
#define AUX_OV_DACH				0x23F // OV reference voltage high byte                       
#define AUX_OV_DACL				0x240 // OV reference voltage low byte                       
#define AUX_UV_DACH				0x241 // UV reference voltage high byte                       
#define AUX_UV_DACL				0x242 // UV reference voltage low byte                       
#define AUX_OT_DACH				0x243 // OT reference voltage high byte                       
#define AUX_OT_DACL				0x244 // OT reference voltage low byte                       
#define AUX_UT_DACH				0x245 // UT reference voltage high byte                       
#define AUX_UT_DACL				0x246 // UT reference voltage low byte                       
#define AUX_TWARN_PTATH			0x247 // TWARN PTAT current high byte                       
#define AUX_TWARN_PTATL			0x248 // TWARN PTAT current low byte                       
#define AUX_DVDDH				0x249 // DVDD LDO voltage output high byte
#define AUX_DVDDL				0x24A // DVDD LDO voltage output low byte             
#define AUX_TSREFH				0x24B // TSREF voltage output high byte
#define AUX_TSREFL				0x24C // TSREF voltage output low byte             
#define AUX_CVDDH				0x24D // CVDD LDO voltage output high byte
#define AUX_CVDDL				0x24E // CVDD LDO voltage output low byte             
#define AUX_AVAOH				0x24F // AVAO reference voltage output high byte
#define AUX_AVAOL				0x250 // AVAO reference voltage output low byte             
#define SPI_RX					0x260 // SPI byte read
#define CB_DONE					0x261 // Cell balancing complete status
#define GPIO_STAT				0x262 // GPIO input status
#define CBVC_COMP_STAT			0x263 // CBVC comparator status
#define CBVC_VCLOW_STAT			0x264 // CBVC VCLOW comparator status
#define COMM_UART_RC_STAT3		0x265 // Discarded UART command frame counter
#define COMM_COML_RC_STAT3		0x266 // Discarded COML command frame counter
#define COMM_COMH_RR_STAT3		0x267 // Discarded COMH response frame counter
#define COMM_COML_RR_STAT3		0x268 // Discarded COML response frame counter
#define COMM_COMH_RC_STAT3		0x269 // Discarded COMH command frame counter
#define COMM_UART_RR_STAT3		0x26A // Discarded UART response frame counter
#define COMM_UART_RC_STAT1		0x26B // Valid UART command frame counter high byte
#define COMM_UART_RC_STAT2		0x26C // Valid UART command frame counter low byte
#define COMM_COML_RC_STAT1		0x26D // Valid COML command frame counter high byte
#define COMM_COML_RC_STAT2		0x26E // Valid COML command frame counter low byte
#define COMM_COMH_RR_STAT1		0x26F // Valid COMH response frame counter high byte
#define COMM_COMH_RR_STAT2		0x270 // Valid COMH response frame counter low byte
#define COMM_UART_TR_STAT1		0x271 // Transmitted UART response frame counter high byte
#define COMM_UART_TR_STAT2		0x272 // Transmitted UART response frame counter low byte
#define COMM_COML_TR_STAT1		0x273 // Transmitted COML response frame counter high byte
#define COMM_COML_TR_STAT2		0x274 // Transmitted COML response frame counter low byte
#define COMM_COMH_RC_STAT1		0x275 // Valid COMH command frame counter high byte
#define COMM_COMH_RC_STAT2		0x276 // Valid COMH command frame counter low byte
#define COMM_COML_RR_STAT1		0x277 // Valid COML response frame counter high byte
#define COMM_COML_RR_STAT2		0x278 // Valid COML response frame counter low byte
#define COMM_COMH_TR_STAT1		0x279 // Transmitted COMH response frame counter high byte
#define COMM_COMH_TR_STAT2		0x27A // Transmitted COMH response frame counter low byte
#define COMM_UART_RR_STAT1		0x27B // Valid UART response frame counter high byte
#define COMM_UART_RR_STAT2		0x27C // Valid UART response frame counter low byte
#define OTP_PROG_STAT			0x27D // OTP programming status
#define OTP_CUST1_STAT1			0x27E // Customer OTP page 1 status
#define OTP_CUST1_STAT2			0x27F // Customer OTP page 2 programming status
#define OTP_CUST2_STAT1			0x280 // Customer OTP page 1 status
#define OTP_CUST2_STAT2			0x281 // Customer OTP page 2 programming status
#define CB_SW_STAT				0x282 // Cell balancing switch status
#define GPIO_FAULT				0x290 // GPIO fault status
#define UV_FAULT				0x291 // UV comparator fault status
#define OV_FAULT				0x292 // OV comparator fault status
#define UT_FAULT				0x293 // UT comparator fault status
#define OT_FAULT				0x294 // OT comparator fault status
#define TONE_FAULT				0x295 // Fault bus status
#define COMM_UART_FAULT			0x296 // UART fault status
#define COMM_UART_RC_FAULT		0x297 // UART receive command fault status
#define COMM_UART_RR_FAULT		0x298 // UART receive response fault status (only valid in multidrop mode)
#define COMM_UART_TR_FAULT		0x299 // UART transmit fault status 
#define COMM_COMH_FAULT			0x29A // COMH fault status
#define COMM_COMH_RC_FAULT		0x29B // COMH receive command fault status
#define COMM_COMH_RR_FAULT		0x29C // COMH receive response fault status 
#define COMM_COMH_TR_FAULT		0x29D // COMH transmit fault status 
#define COMM_COML_FAULT			0x29E // COML fault status
#define COMM_COML_RC_FAULT		0x29F // COML receive command fault status
#define COMM_COML_RR_FAULT		0x2A0 // COML receive response fault status 
#define COMM_COML_TR_FAULT		0x2A1 // COML transmit fault status 
#define OTP_FAULT				0x2A2 // OTP page fault status
#define RAIL_FAULT				0x2A3 // Power rail fault status
#define OVUV_BIST_FAULT			0x2A4 // OVUV BIST fault status
#define OTUT_BIST_FAULT			0x2A5 // OTUT BIST fault status
#define ECC_DATAOUT0			0x2B0 // 1st data out byte for ECC test
#define ECC_DATAOUT1			0x2B1 // 2nd data out byte for ECC test
#define ECC_DATAOUT2			0x2B2 // 3rd data out byte for ECC test
#define ECC_DATAOUT3			0x2B3 // 4th data out byte for ECC test
#define ECC_DATAOUT4			0x2B4 // 5th data out byte for ECC test
#define ECC_DATAOUT5			0x2B5 // 6th data out byte for ECC test
#define ECC_DATAOUT6			0x2B6 // 7th data out byte for ECC test
#define ECC_DATAOUT7			0x2B7 // 8th data out byte for ECC test
#define ECC_DATAOUT8			0x2B8 // 9th data out byte for ECC test
#define SEC_BLK					0x2B9 // SEC detected block
#define DED_BLK					0x2BA // DED detected block
#define DEV_ADD_STAT			0x2BB // Device address status
#define COMM_STAT				0x2BC // Communication status register
#define DAISY_CHAIN_STAT		0x2BD // Communication status register
#define VCELL1_HU				0x2C0 // Cell 1 voltage high byte (uncorrected)
#define VCELL1_MU				0x2C1 // Cell 1 voltage middle byte (uncorrected)
#define VCELL1_LU				0x2C2 // Cell 1 voltage low byte (uncorrected)
#define VCELL2_HU				0x2C3 // Cell 2 voltage high byte (uncorrected)
#define VCELL2_MU				0x2C4 // Cell 2 voltage middle byte (uncorrected)
#define VCELL2_LU				0x2C5 // Cell 2 voltage low byte (uncorrected)
#define VCELL3_HU				0x2C6 // Cell 3 voltage high byte (uncorrected)
#define VCELL3_MU				0x2C7 // Cell 3 voltage middle byte (uncorrected)
#define VCELL3_LU				0x2C8 // Cell 3 voltage low byte (uncorrected)
#define VCELL4_HU				0x2C9 // Cell 4 voltage high byte (uncorrected)
#define VCELL4_MU				0x2CA // Cell 4 voltage middle byte (uncorrected)
#define VCELL4_LU				0x2CB // Cell 4 voltage low byte (uncorrected)
#define VCELL5_HU				0x2CC // Cell 5 voltage high byte (uncorrected)
#define VCELL5_MU				0x2CD // Cell 5 voltage middle byte (uncorrected)
#define VCELL5_LU				0x2CE // Cell 5 voltage low byte (uncorrected)
#define VCELL6_HU				0x2CF // Cell 6 voltage high byte (uncorrected)
#define VCELL6_MU				0x2D0 // Cell 6 voltage middle byte (uncorrected)
#define VCELL6_LU				0x2D1 // Cell 6 voltage low byte (uncorrected)
#define AUX_BAT_HU				0x2D2 // Cell stack voltage high byte (uncorrected)
#define AUX_BAT_LU				0x2D3 // Cell stack voltage low byte (uncorrected)
#define AUX_GPIO1_HU			0x2D4 // GPIO1 voltage high byte (uncorrected)
#define AUX_GPIO1_MU			0x2D5 // GPIO1 voltage middle byte (uncorrected)
#define AUX_GPIO1_LU			0x2D6 // GPIO1 voltage low byte (uncorrected)
#define AUX_GPIO2_HU			0x2D7 // GPIO2 voltage high byte (uncorrected)
#define AUX_GPIO2_LU			0x2D8 // GPIO2 voltage low byte (uncorrected)
#define AUX_GPIO3_HU			0x2D9 // GPIO3 voltage high byte (uncorrected)
#define AUX_GPIO3_LU			0x2DA // GPIO3 voltage low byte (uncorrected)
#define AUX_GPIO4_HU			0x2DB // GPIO4 voltage high byte (uncorrected)
#define AUX_GPIO4_LU			0x2DC // GPIO4 voltage low byte (uncorrected)
#define AUX_GPIO5_HU			0x2DD // GPIO5 voltage high byte (uncorrected)
#define AUX_GPIO5_LU			0x2DE // GPIO5 voltage low byte (uncorrected)
#define AUX_GPIO6_HU			0x2DF // GPIO6 voltage high byte (uncorrected)
#define AUX_GPIO6_LU			0x2E0 // GPIO6 voltage low byte (uncorrected)
#define CUST_CRC_RSLTH			0x2E1 // Calculated customer CRC result high byte                                    
#define CUST_CRC_RSLTL			0x2E2 // Calculated customer CRC result low byte
                  
// Function Prototypes
void Wake79606();
void CommClear(void);
void CommSleepToWake(void);
void CommReset(void);
void AutoAddress(void);
BOOL GetFaultStat();

uint16 CRC16(BYTE *pBuf, int nLen);

int  WriteReg(BYTE bID, uint16 wAddr, uint64 dwData, BYTE bLen, BYTE bWriteType);
int  ReadReg(BYTE bID, uint16 wAddr, BYTE * pData, BYTE bLen, uint32 dwTimeOut, BYTE bWriteType);

int  WriteFrame(BYTE bID, uint16 wAddr, BYTE * pData, BYTE bLen, BYTE bWriteType);
int  ReadFrameReq(BYTE bID, uint16 wAddr, BYTE bByteToReturn,BYTE bWriteType);

void delayms(uint16 ms);
void delayus(uint16 us);
float Complement(uint16 rawData, float multiplier);

#endif /* BQ79606_H_ */
//EOF
