class SubTest{

  SubTest(){
    size(200,200);
    smooth();
  }


  void drawMe(){
    background(255);
    PVector mouse = new PVector(mouseX, mouseY);
    PVector center = new PVector(width/2, height/2);
    
    mouse.sub(center);
    
    // Draw a line ro represent the vector
    translate(width/2, height/2);
    line(0, 0, mouse.x, mouse.y);
  } 
}

class MultTest{
  MultTest(){
    size(200, 200);
    smooth();
    
  }
 
  void drawMe(){
    background(255);
    
    PVector mouse = new PVector(mouseX, mouseY);
    PVector center = new PVector(width/2, height/2);
    
    mouse.sub(center);
    
    mouse.mult(0.5);
    
    translate(width/2, height/2);
    line(0,0, mouse.x, mouse.y);
    
  } 
  
}

class MagTest{
  MagTest(){
    size(200,200);
    smooth();
  }
  
  void drawMe(){
    background(255);
    
    PVector mouse = new PVector(mouseX, mouseY);
    PVector center = new PVector(width/2, height/2);
    
    mouse.sub(center);

    float mag = mouse.mag();
    fill(0);
    rect(0,0, mag, 10);

    translate(width/2, height/2);
    line (0,0, mouse.x, mouse.y);
    
  }
  
}


class NormalTest{
  NormalTest(){
    size(200,200);
    smooth();    
   
  }
 
  void drawMe(){


    background(255);
    PVector mouse = new PVector(mouseX, mouseY);
    PVector center = new PVector(width/2, height/2);
    
    mouse.sub(center);
    
    mouse.normalize();
    mouse.mult(50);
    
    translate(width/2, height/2);
    line(0, 0, mouse.x, mouse.y);
  }
  
  
}

