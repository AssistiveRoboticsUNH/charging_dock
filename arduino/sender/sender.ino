#include <IRremote.h> // >v3.0.0
                                            
#define PIN_SEND 3

void setup()  
{  
  IrSender.begin(PIN_SEND); // Initializes IR sender
}  
                               
void loop()  
{  
   IrSender.sendNEC(0x0102, 0x34); 
  delay(1000); // wait for one second
}  