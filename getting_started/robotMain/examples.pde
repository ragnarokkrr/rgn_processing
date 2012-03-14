class Example54{
  Example54(){
    size(480, 120);
    fill(0, 120);
    smooth();
    noStroke();
  }
  
  void drawMe(){
    ellipse(mouseX, mouseY, 9,9); 
    
  }
  
}

class Example55{
  Example55(){
    size(480, 120);
    fill(0, 120);
    smooth();
    noStroke();
  }
  
  void drawMe(){
    background(204);
    ellipse(mouseX, mouseY, 9,9); 
    
  }
  
}

class Example56{
  Example56(){
    size(480, 120);
    strokeWeight(4);
    smooth();
    stroke(0, 102);
  }
  
  void drawMe(){
    //background(204);
    line(mouseX, mouseY, pmouseX,pmouseY); 
    
  }
  
}


class Example57{
  Example57(){
    size(480, 120);
    smooth();
    stroke(0, 102);  
  }


 void drawMe(){
   float weight = dist(mouseX, mouseY, pmouseX, pmouseY);
   strokeWeight(weight);
   line(mouseX, mouseY, pmouseX, pmouseY);
 } 
  
}
