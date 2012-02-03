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
     rect(20, 20, 40, 40);
     popMatrix();
    
  }
}
  
