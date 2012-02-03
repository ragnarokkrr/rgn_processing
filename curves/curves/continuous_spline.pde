void drawContinuousSpline(){
  
  
  
  size(200, 200);
  background (255);
  smooth();
  
  noFill();
  stroke(0);
  beginShape();
  curveVertex(40, 40); //first control point
  curveVertex(40, 40); //also starting point
  curveVertex(80,60);
  curveVertex(100, 100);
  curveVertex(60, 120);
  
  
  
  curveVertex(50, 150); // last point of curve
  curveVertex(50, 150); //also the last control point
  
  endShape();
  
  
  int[] coords={
    40, 40
    ,80, 60
    ,100,100
    ,60, 120
    , 50,150
  };

  fill (255,0,0);
  noStroke();
  for (int i=0; i<coords.length; i +=2){
    ellipse(coords[i], coords[i+1], 3, 3); 
  }
  
  
        
}
