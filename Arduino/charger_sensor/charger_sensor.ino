


//33.9 + -69.5x + 62.3x^2 + -25.4x^3 + 3.83x^4


const int sensorPin[] = {A0};
float distance[1];//watch video for details https://youtu.be/rdNCIyL6OA8
const int AVERAGE_OF =50;
const float MCU_VOLTAGE = 5.0;

const int bump_pin=4;

void setup()
{
  pinMode(bump_pin, INPUT);
  Serial.begin(9600); 
  Serial.println("Sharp GP2Y0A51SK0F");
  Serial.println("ready");
}



void loop(){
  readDistance(0);//read sensor 1
  int b=digitalRead(bump_pin);

  float d=distance[0];
  String data="d="+String(d)+",b="+String(b);
  Serial.println(data);
}


/*
 *  readDistance()
 * @brief reads the the distance from sharp sensor
 * and updates the apropriate sensor's value
 * @param "sensor" is integer

 * @return none
 * Written by Ahmad Shamshiri for robojax.com
 * on July 09, 2020 in Ajax, Ontario, Canada
 */
void readDistance(int sensor)
{
  //Robojax.com code for sharp IR sensor 
      float voltage_temp_average=0;
      
      for(int i=0; i < AVERAGE_OF; i++)
    {
      int sensorValue = analogRead(sensorPin[sensor] );
      delay(1);      
      voltage_temp_average +=sensorValue * (MCU_VOLTAGE / 1023.0);

    }
     voltage_temp_average /= AVERAGE_OF;

  // eqution of the fitting curve
  ////33.9 + -69.5x + 62.3x^2 + -25.4x^3 + 3.83x^4
  distance[sensor] = 33.9 + -69.5*(voltage_temp_average) + 62.3*pow(voltage_temp_average,2) + -25.4*pow(voltage_temp_average,3) + 3.83*pow(voltage_temp_average,4);
  
     //Robojax.com code for sharp IR sensor 
}//readDistance

 
