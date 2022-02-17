#include <Servo.h>

Servo servo1;  
Servo servo2; 
Servo servo3;
Servo servo4;
Servo servo5;
char a;
String readString; 

void setup() 
{
  servo1.attach(3); 
  servo2.attach(4); 
  servo3.attach(5);  
  servo4.attach(6);
  servo5.attach(7); 
  Serial.begin(9600); 
//Posiciones iniciales
servo1.write(90);
servo2.write(120);
servo3.write(120);
servo4.write(100);
servo5.write(0);
delay(10);
}

void loop() 
{
 if (Serial.available()) 
 {  
    a = Serial.read();
    if(a=='A'){ 
      motor1();
    }
    if(a=='B'){ 
      motor2();
    }
    if(a=='C'){ 
      motor3();
    }
    if(a=='D'){ 
      motor4();
    }
    if(a=='E'){ 
      motor5();
    }
    if(a=='F'){ 
      cerrar();
    }
    if(a=='G'){ 
      abrir();
    }
  }
}  
  
void motor1()
{
  delay(10);   
  while (Serial.available()) 
  {
    char b = Serial.read();  
    readString += b;        
  }
  if (readString.length() >0) 
  {   
    Serial.println(readString.toInt());  
    servo1.write(readString.toInt());
    readString=""; 
  }
}

void motor2(){
        delay(10); 
        while (Serial.available()) {                  
          char b = Serial.read();  
          readString += b;         
        }
        if (readString.length() >0) { 
          Serial.println(readString.toInt());  
          servo2.write(readString.toInt());
          readString=""; 
        } 
}

void motor3(){
        delay(10); 
        while (Serial.available()) {                 
          char b = Serial.read();  
          readString += b;        
        }
        if (readString.length() >0) { 
          Serial.println(readString.toInt());  
          servo3.write(readString.toInt());
          readString=""; 
        } 
}
void motor4(){
        delay(10); 
        while (Serial.available()) {                  
          char b = Serial.read();  
          readString += b;        
        }
        if (readString.length() >0) { 
          Serial.println(readString.toInt());  
          servo4.write(readString.toInt());
          readString=""; 
        } 
}

void motor5()
{
  delay(10);   
  while (Serial.available()) 
  {
    char b = Serial.read();  
    readString += b;        
  }
  if (readString.length() >0) 
  {   
    Serial.println(readString.toInt());  
    servo5.write(readString.toInt());
    readString=""; 
  }
}

void abrir()
{
  delay(10);

  servo5.write(100);

}

void cerrar()
{
  delay(10);

  servo5.write(0);
}
