void drawCorrectRotation(){
  size (200, 200);
  background(255);
  
  smooth();
  fill(192);
  noStroke();
  rect(40, 40  //x, y as pivot point
      , 40, 40);
      
  pushMatrix();
  //move the origin to the pivot point
  translate (40,40);
  
  //then pivot the grid
  rotate(radians(45));
  
  fill(0);
  rect(0,0, 40, 40);
  popMatrix();
}



class ColorRotation{
  ColorRotation (){
    size(200, 200);
    background(255);
    smooth();
    noStroke();  
  }
  
  void rotateColor(){
    if(frameCount % 10 == 0){
      fill(frameCount * 3 % 255
        , frameCount * 5 % 255
        , frameCount * 5 % 255
      );
      pushMatrix();
      translate(100,100); // translate to center
      rotate(radians(frameCount * 1 % 360));
      rect(0,0, 80, 01);
  
      popMatrix();    
    }  
  }
}  

