void draw1stTrans(){
  size(200, 200);
  background(255);
  noStroke();
  
  //original position
  fill(192);
  rect(20, 20, 40, 40);
  
  //blue draw after tranlate grif
 
  fill(0, 0, 255, 128);
  pushMatrix();
  translate(60, 80);
  rect(20, 20, 40, 40);
  popMatrix();
  
}
