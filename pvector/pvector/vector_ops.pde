class SubTest{

  SubTest(){
    size(200,200);
    smooth();
  }


  void drawMe(){
    PVector mouse = new PVector(mouseX, mouseY);
    PVector center = new PVector(width/2, height/2);
    
    mouse.sub(center);
    
    // Draw a line ro represent the vector
    translate(width/2, height/2);
    line(0, 0, mouse.x, mouse.y);
  } 
}


