class MouseAnimation{
  LastMover [] movers;
  MouseAnimation(){
    this.movers = new LastMover[20];
    for (int i = 0; i < this.movers.length; i++){
      this.movers[i] = new LastMover();
    }

    size(200, 200);
    smooth();
    background(255);    
  }
   
  void drawMe(){
    noStroke();
    fill(255,10);
    rect(0, 0, width, height);
    
    for(int i = 0; i < this.movers.length; i++){
      movers[i].update();
      movers[i].checkEdges();
      movers[i].display();
    }
  }
}

class LastMover{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  
  LastMover(){
    this.location = new PVector(random(width), random(height));
    velocity = new PVector(0,0);
    topspeed = 4;
  } 
  
  
  void update(){
    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, this.location); // Find vectpr pointint towards mouse
    dir.normalize();  // normalize 
    dir.mult(0.5);  //scale
    this.acceleration = dir; //set to acceleration
    
    //Motion 101! Velocity changes by acceleration. Location changes by velocoty
    this.velocity.add(this.acceleration);
    this.velocity.limit(this.topspeed);
    this.location.add(this.velocity);
    
  }
  
  
  void display(){
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }
  
  void checkEdges(){
      if(location.x > width){
        location.x = 0;
      }else if (location.x < 0){
        location.x = width;
      }
      
      if(location.y > height){
        location.y = 0;
      }else if (location.y < 0){
        location.y = height;
      }
    
  }
  

}
