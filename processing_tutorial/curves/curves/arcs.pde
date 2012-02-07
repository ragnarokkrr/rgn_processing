void drawArcs(){
  size(300, 200);
  background(255);
  smooth(); 
  
  
  rectMode(CENTER); //show bounding boxes
  stroke(128);
  rect(35, 35, 50,50); // x center, y center,  width, heigth
  rect(105, 35, 50, 50);  // x + 50 + 20
  rect(175, 35, 50, 50);  // x + 50 + 20  
  rect(105, 105, 100, 50);
  
  
  
  stroke(0);
  //lower quarter circle
  arc(35, 35, 50, 50, 0, PI / 2.0); //rect params, start radians, stop radians
  //upper half circle
  arc(105, 35, 50, 50, -PI, 0); 
  //60 degrees
  arc(175, 35, 50, 50, -PI / 6, PI / 6); 

  //180
  arc(105, 105, 100, 50, PI / 2, 3 * PI / 2 );
 
  
}
