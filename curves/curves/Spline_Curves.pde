void drawSpline(){
  size(200, 200);
  background(255);
  smooth();
  
  stroke(0);
  curve(40, 40 // first control point
      , 80, 60 //curve starting point
      , 100, 100 //curve ending point
      , 60, 120 //second control point
  ); 
  
  noStroke();
  fill(255, 0,0);
  ellipse(40, 40, 3, 3);// first control point
  
  fill(0,0, 255, 192);
  ellipse(100, 100,3, 3);  //ending point
  ellipse(80, 60, 3, 3);  // curve starting point
  
  fill(255,0,0);
  ellipse(60, 120, 3, 3); //second control point
  
  
  
}
