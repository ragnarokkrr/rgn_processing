//pseudo code

Car[] myCars;

void setup(){
  size(200,200);
  myCars = new Car[2];
  myCars[0] = new Car(color(255,0,0), 0, 100, 2);
  myCars[1] = new Car(color(0,0,255), 0, 10, 1);
}

void draw(){
  background(255);
  
  for (int i = 0; i <myCars.length; i++){
    myCars[i].drive();
    myCars[i].display();
  }

}


