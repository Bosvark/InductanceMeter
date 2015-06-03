#define FREQ_INPUT    2
#define INDUCTOR_OUT  13

double time1, time2, inductance, average, timeout;
volatile double frequency=0;
const double capacitance = 2.E-6;
int state=1;
int count=0;

double average_indcutance = 0.;
int count2=0;

void setup()
{
  Serial.begin(115200);
  
  pinMode(FREQ_INPUT,INPUT);
  pinMode(13,INDUCTOR_OUT);
    
  Serial.println("LC Meter");
  
  timeout = millis();
  
  attachInterrupt(0, pulseReceive, CHANGE);
}

void loop()
{
  time1 = 0.;
  time2 = 0.;
  frequency = 0.;
  
  attachInterrupt(0, pulseReceive, CHANGE);

  if(state){
    digitalWrite(INDUCTOR_OUT, HIGH);
    state = 0;
  }else{
    digitalWrite(INDUCTOR_OUT, LOW);
    state = 1;
  }
  
  while(frequency == 0.){
    if(millis() - timeout > 500){
      timeout = millis();
      average_indcutance = 0;
      count2 = 0;
      
      average = 0.;
      count = 0;
      
      Serial.println("No reading");
      
      return;
    }
  }
  
  average += frequency;
  count++;
  
  if(count == 10){
    frequency = average / 10.;
    inductance = 1.E6 * (1.0/(capacitance*frequency*frequency*4.0*3.14159*3.14159));
    
    average_indcutance += inductance;
    count2++;

    average = 0.;
    count = 0;
    
    timeout = millis();
    
    Serial.print("High for uS:");
    Serial.print(time2 - time1);
    Serial.print("\tfrequency Hz:");
    Serial.print(frequency);
    Serial.print("\tinductance uH:");
    Serial.print(inductance);
    Serial.print("\taverage uH:");
    Serial.println(average_indcutance/count2);
    
  }
  
}

void pulseReceive()
{
  if(time1 == 0.){
    if(digitalRead(FREQ_INPUT) == HIGH)
      time1 = micros();
    
    return;
  }else if(time2 == 0.){
//    if(digitalRead(FREQ_INPUT) == LOW)
    {
      time2 = micros();
      detachInterrupt(INDUCTOR_OUT);
    }
  }
  
  if(time2 - time1 > 0.)
    frequency = 1.E6 / (2. * (time2 - time1));
}
