class  FirstExample{
  FirstExample(){
  }
 
  void drawMe(){
    size(300, 300);
    background(255);
    smooth();
    polygon (3, 50, 75, 50);
    polygon (4, 170, 75, 50);
    
    fill(255, 204, 255);
    stroke(128, 0, 128);
    polygon(5, 50, 180, 50);
  
    noFill();
    stroke(0);
    polygon(6, 170, 180, 50);   
  }
  
  void polygon(int n, float cx, float cy, float r){
   float angle = 360. / n;
 
   beginShape();
   
  for(int i = 0; i < n; i++){
     vertex(
       cx + r * cos(radians(angle * i))
       , cy + r * sin(radians(angle * i))
     );
   }
   endShape(CLOSE);
 }
  
}
