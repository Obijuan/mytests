//--------------------------------------------------------------
//-- ArduSnake library: Locomotion of modular snake robots
//-----------------------------------------------------------
//-- Layer: Oscillator
//------------------------------------------------------------
//-- Example of use of the Oscillator layer
//--
//-- Example 2: Setting the oscillator parameters
//-- One servo is being oscillated using the parameters set by the user
//--------------------------------------------------------------
//-- (c) Juan Gonzalez-Gomez (Obijuan), Feb-2012
//-- GPL license
//--------------------------------------------------------------
#include <Servo.h>
#include <Oscillator.h>

#define T 3000

//-- Declare an oscillator
Oscillator osc[7];

#define DF 0  //-- 40

void setup()
{
  //-- Attach the oscillators to the servos
  osc[0].attach(5);    //-- meñique
  osc[1].attach(6);    //-- Anular
  osc[2].attach(9);    //-- Corazon
  osc[3].attach(10);     //-- Indice
  osc[4].attach(11);       //-- Pulgar
  
  //-------- Set the oscillator parameters
  //-- Set the offset. The servo will oscillate around this point
  //-- Units: Degrees. Default value: 0
  osc[0].SetO(2);
  osc[0].SetA(40);
  osc[0].SetT(T);
  osc[0].SetPh(DEG2RAD(0));
  
  //-- Finger 1
  osc[1].SetO(0);
  osc[1].SetA(60);
  osc[1].SetT(T);
  osc[1].SetPh(DEG2RAD(0 + DF * 1));
  
  //-- Finger 2
  osc[2].SetO(10);
  osc[2].SetA(55);
  osc[2].SetT(T);
  osc[2].SetPh(DEG2RAD(0 + DF * 2));
  
  //-- Finger 3
  osc[3].SetO(5);
  osc[3].SetA(55);
  osc[3].SetT(T);
  osc[3].SetPh(DEG2RAD(0 + DF * 3));
  
  //-- Finger 4
  osc[4].SetO(30);
  osc[4].SetA(50);
  osc[4].SetT(T);
  osc[4].SetPh(DEG2RAD(0 + DF * 4));
  
}

void loop()
{
  //-- Refresh the oscillator
  for (int i=0; i<5; i++)
    osc[i].refresh();
}


