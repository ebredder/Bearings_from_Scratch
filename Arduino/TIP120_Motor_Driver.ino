int potPin = A0; // Analog input 0 connected to the potentiometer
int transistorPin = 9; // PWM Pin 9 connected to the base of the transistor
int potValue = 0; // value returned from the potentiometer

void setup() {
  pinMode(transistorPin, OUTPUT); // set the transistor pin as output:
}
void loop() {
  potValue = analogRead(potPin) / 4; // read the potentiometer, convert it to 0 - 255:
  analogWrite(transistorPin, potValue); // use that to control the transistor:
}
