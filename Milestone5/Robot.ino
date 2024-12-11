#include <Servo.h>

Servo myservo; 
Servo myservo2;
Servo myservo3;
Servo myservo4;
 

void setup() {
  myservo.attach(9);
  myservo2.attach(10);
  myservo3.attach(11);
  myservo4.attach(6);
  delay(1000);   

  for (int i = 0; i <= 50; i++) {
    float u = i / 10.0; 
    double q1 = 90 - 10.8*u*u + 1.44* u*u*u; 
    double q2 = 90 + 3.6*u*u - 0.48* u*u*u; 
    double q3 = 90 - 6 * u * u + 0.8 * u * u * u ;

  
    myservo.write(q1);
    myservo2.write(q2); 
    myservo3.write(q3);
    delay(50);

  }
  for (int i = 0; i <= 20; i++) {
     // Record the start time
   
    float u = i / 10.0; // Ensure division yields a float
   
   
    double q2 = 120 + 22.5*u*u - 7.5* u*u*u; 
   
    myservo2.write(q2);

    delay(50);

    
  }


   delay(1000);

   for (int i = 110; i >= 40; i-=2) {
     myservo4.write(i);
     delay(40);
  }

   delay(1000);
    for (int i = 0; i <= 50; i++) {
   
    float u = i / 10.0; // Ensure division yields a float
   
    
   
    double q2 = 150 - 3.6*u*u + 0.48* u*u*u; 

   
   
   
    myservo2.write(q2); 
    myservo3.write(40);
    delay(50);
   
  }
  for (int i = 0; i <= 50; i++) {
   
    float u = i / 10.0; // Ensure division yields a float
   
    double q1 =  10.8*u*u - 1.44* u*u*u; 
    
   
    

   
   
    myservo.write(q1);
    myservo3.write(40);
  
    delay(40);
   
  }

  for (int i = 0; i <= 20; i++) {
     // Record the start time
   
    float u = i / 10.0; // Ensure division yields a float
   
   
    double q2 = 120 + 22.5*u*u - 7.5* u*u*u; 
   
    myservo2.write(q2);
    myservo3.write(40);
    delay(50);

    
  }

  delay(1000);

   for (int i = 40; i <= 110; i+=2) {
     myservo4.write(i);
     delay(50);
  }

   delay(1000);

  for (int i = 0; i <= 50; i++) {
   
    float u = i / 10.0; //
   
  
    double q2 = 150 - 7.2*u*u + 0.96* u*u*u; 

    double q3 = 40 + 6 * u * u - 0.8* u * u * u ;

   
   
    myservo2.write(q2); 
    myservo3.write(q3);
    delay(50);
   
 
  }
   delay(1000);

  myservo3.write(90);
}

void loop() {
  // put your main code here, to run repeatedly:

}
