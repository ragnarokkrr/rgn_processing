class VectorBouncingBall{
  PVector location; 
  PVector velocity; //xspeed, ypeed

  VectorBouncingBall(){
    size(200,200);
    smooth();
    background(255);
    this.location = new PVector(100, 100); 
    this.velocity = new PVector(2.5, 5); //xspeed, ypeed
     
  }
  
  void drawMe(){
    noStroke();
    fill(255, 10);
    
    //add the current speed to the location
    this.location.add(this.velocity); 
    
    //boundary controlVe
    if ((location.x > width) || (location.x < 0)){
      velocity.x = velocity.x * -1;  
    }
    
    if ((location.y > height) || (location.y < 0)){
      velocity.y = velocity.y * -1; 
    }
    //discplay circle at x location
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }
}
