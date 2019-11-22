#include <mbed.h>

//Pin Assignments
//*Combine into for loop*
DigitalOut OUT4(PA_4);
DigitalOut OUT5(PA_5);
DigitalOut OUT6(PA_6);
DigitalOut OUT7(PA_7);
DigitalOut OUT8(PC_4);
DigitalOut OUT9(PC_5);
DigitalOut OUT10(PB_0);
DigitalOut OUT11(PB_11);
DigitalOut OUT12(PB_10);
DigitalOut OUT13(PB_2);
DigitalOut OUT14(PB_1);
DigitalOut OUT15(PB_12);
DigitalOut OUT16(PB_13);
DigitalOut OUT17(PB_14);

DigitalOut OUT27(PA_10);
DigitalOut OUT28(PA_9);
DigitalOut OUT29(PA_8);
DigitalOut OUT30(PC_9);
DigitalOut OUT31(PC_8);
DigitalOut OUT32(PC_7);
DigitalOut OUT33(PC_6);
DigitalOut OUT34(PB_15);
DigitalOut OUT35(PC_10);
DigitalOut OUT36(PC_11);
DigitalOut OUT37(PC_12);
DigitalOut OUT40(PC_0);
DigitalOut OUT41(PC_1);
DigitalOut OUT42(PC_2);
DigitalOut OUT43(PC_3);
DigitalOut OUT44(PA_0);
DigitalOut OUT45(PA_1);
DigitalOut OUT46(PA_2);

DigitalOut BUZZ(PB_5); // Buzzer, Set PWM
DigitalIn userButton(PC_13); 

I2C i2c1(PB_7, PB_6); // SDA SCL
CAN can1(PB_9, PB_8); //TX RX

//Init Serial for debug
//Serial RS(PC_4, PC_5); //RS232/485 connector

//Devices
//BME280 BME(PB_7, PB_6);
//WS2812B
//DS18B20 PD_2 User Temp

//Variables
//float pressure;
//char counter =0;


int main() {
//Setup Code
    //i2c.frequency(100000);
    //Buzzer
    //RGB LED
    //TEMP SENSING
    //All LEDs
    //User Button
    //I2C Screen
    //CAN

  while(1) {
    if(userButton){
      OUT4 = 1;
    } else {
      OUT4 = 0;
    }

    wait_ms(100);
  }
}