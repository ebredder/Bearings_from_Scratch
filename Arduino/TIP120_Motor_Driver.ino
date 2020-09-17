int potPin = A0; // Analog input 0 <- potentiometer
int transistorPin = 9; // PWM pin 9 -> BASE transistor
int potValue = 0; // value from potentiometer

void setup() {
  pinMode(transistorPin, OUTPUT); // set the 'transistorPin' as an output
}
void loop() {
  potValue = analogRead(potPin) / 4; // read potentiometer, convert to 0-255
  analogWrite(transistorPin, potValue); // control transistor with potentiometer
}

#Comment
