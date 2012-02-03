class ScalingSample{
  ScalingSample(){
    size(200,200);
    background(255);
  }
  
  void drawScale(){
     stroke(128);
     rect(20, 20, 40, 40);
     
     stroke(0);
     pushMatrix();
     scale(2.0);
     
     translate(-20, -20);
     rect(20, 20, 40, 40);
     popMatrix();
    
  }
}

class OrderSample{
  OrderSample(){
    size(200, 200);
    background(255);
    smooth();
    line(0, 0, 200, 0); //X-axis
    line(0,0, 0, 200); //Y-axis
  } 
  
  void drawSample(){
    pushMatrix();
    fill(255, 0, 0);
    rotate(radians(30));
    translate(70, 70);
    scale(2.0);
    rect(0, 0, 20, 20);
    
    
    popMatrix();
  
    pushMatrix();
    fill(255);
    translate(70,70);
    rotate(radians(30));
    scale(2.0);
    rect(0, 0, 20, 20);
    popMatrix();



  }

  
  
}
  
