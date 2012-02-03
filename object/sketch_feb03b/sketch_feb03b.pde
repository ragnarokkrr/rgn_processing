//pseudo code

/*****
Data
  Car color
  Car x location
  Car y location
  Car x speed

Setup
  initialize car color
  initialize car location to starting point
  initialize car speed
  
Draw
  Fill bg
  display car location with color
  increment car's location by speed
***/
Car myCar;

void setup(){
  size(200,200);
  myCar = new Car();
}

void draw(){
  background(255);
  
  myCar.drive();
  myCar.display();
  
}


class Car{
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  Car(){
   c = color(255);
   xpos = width / 2;
   ypos = height / 2;
   xspeed = 1;
    
  }

  //car draw
  void display(){
   rectMode(CENTER);
   fill(c); 
   rect(xpos,ypos, 30, 10);
  }

  // move car Xpos
  void drive(){
   xpos = xpos + xspeed;
   if (xpos > width){
    xpos = 0;
   } 
  }
}//class car


