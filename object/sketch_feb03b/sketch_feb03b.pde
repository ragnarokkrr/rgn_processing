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
int cval = 0;
color c = color(cval); //black
float x = 0;
float y = 100;
float speed = 1;

void setup(){
  size(200,200);
}

void draw(){
  background(255);
  move();
  //fade();
  display();
}

// move car Xpos
void move(){
 x = x + speed;
 if (x > width){
  x = 0;
 } 
}

void fade(){
  c = color( --cval % 255);
}

//car draw
void display(){
 fill(c); 
 rect(x,y, 30, 10);
}
