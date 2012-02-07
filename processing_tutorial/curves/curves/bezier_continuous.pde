void drawContinuousBezier(){
 size(150, 150);
 background(255);
 smooth();
 
 
 noFill();
 stroke(0);
 
 beginShape();
 vertex(50, 75);
 bezierVertex(
       25,25 //first control point
       ,100, 50 //second control point
       ,50,100 //nextpoint on curve
       );
       
 bezierVertex(
     20, 140
     , 75, 140
     , 120, 120
     ); 
       
 endShape();
 
 
 color(125, 125, 0);
 line(
   50, 75 //first vertex
   ,
   20, 140 //second vertex
   );
  
}
