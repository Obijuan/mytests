
const int led = 13;

void setup()
{
  //-- Configure the led
  pinMode(led, OUTPUT);
  digitalWrite(led, LOW);
  
  //Setup usb serial connection to computer
  Serial.begin(19200);

  //-- Debug
  Serial.println("ready");
}

char state = 0;
int car;

void loop()
{
  if (Serial.available() > 0) {
    car = Serial.read();
    state = (state + 1) & 0x01;
    digitalWrite(led, state);
  }
  
}



