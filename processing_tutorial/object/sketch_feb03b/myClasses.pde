//************* classes
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

  Car(color c, float xpos, float ypos, float xspeed){
    this.c = c;
    this.xpos = xpos;
    this.ypos = ypos;
    this.xspeed = xspeed; 
  }

  //car draw
  void display(){
   rectMode(CENTER);
   fill(c); 
   rect(xpos,ypos, 30, 10);
   rect(xpos-6, ypos-5, 9,7);//rear left wheel
   rect(xpos-6, ypos+5, 9,7);//rear right wheel
  
   rect(xpos+7, ypos-5, 6,4);//front left wheel
   rect(xpos+7, ypos+5, 6,4);//rear right wheel
  }

  // move car Xpos
  void drive(){
   xpos = xpos + xspeed;
   if (xpos > width){
    xpos = 0;
   } 
  }
}//class car


