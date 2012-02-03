//pseudo code
Car myCar1;
Car myCar2;

void setup(){
  size(200,200);
  myCar1 = new Car(color(255,0,0), 0, 100, 2);
  myCar2 = new Car(color(0,0,255), 0, 10, 1);
}

void draw(){
  background(255);
  
  myCar1.drive();
  myCar1.display();

  myCar2.drive();
  myCar2.display();
  
}


