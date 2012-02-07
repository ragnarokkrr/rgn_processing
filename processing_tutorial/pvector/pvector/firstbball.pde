class BouncingBall{
  float x = 100;
  float y = 100;
  float xspeed = 1;
  float yspeed = 3.3;

  BouncingBall(){
    size(200, 200);
    smooth();
    background(255);
  }
 
  void drawMe(){
    noStroke();
    fill(255, 10);  
  
    rect(0, 0, width, height);
    
    //add tje curremt speed to the location.
    this.x = this.x + this.xspeed;
    this.y = this.y + this.yspeed;
    
    
    //cjeck for bouncing
    if ((this.x > width) || (this.x <0)){
      this.xspeed = this.xspeed * -1;
    }
    if ((this.y > height) || (this.y <0)){
      this.yspeed = this.yspeed * -1;
    }
    
    //display at x,y location
    stroke(0);
    fill(175);
    ellipse(this.x, this.y, 16, 16);

  } 
  
}
