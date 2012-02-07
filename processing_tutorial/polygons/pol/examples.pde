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

class SecondExample{
  SecondExample(){
  
  }
  
  void drawMe(){
    size(300, 400);
    background(255);
    smooth();
    
    noFill();
    this.polygon( 3, 50, 75, 100, 100, -PI / 2.0);
    this.polygon( 4, 170, 75, 50, 125, -PI / 4.0);
    
    fill(255, 204, 255);
    stroke(128, 0, 128);
    polygon(5, 50, 200, 75, 50, -PI / 2.0);
    
    noFill();
    stroke(0);
    polygon(6, 170, 200, 50, 100, 0);
    
    
    noFill();
    polygon(3, 50, 325, 50);
    polygon(4, 170, 325, 25);
    
    
    stroke(128);
    ellipse(50, 75, 100, 100);
    ellipse(170, 75, 50, 125);
    ellipse(50, 200, 75, 50);
    ellipse(170, 200, 50, 100);
    ellipse(50, 325, 100, 100);
    ellipse(170, 325, 50, 50);
  }

  void polygon(int n, float cx, float cy, float w, float h, float startAngle){
    float angle = TWO_PI / n; 
    /* the horizontal "radius" is one half the width;
      the vertical "radius" is one half the height */
    w = w / 2.;
    h = h / 2.;
    
    beginShape();
    for(int i=0; i < n; i++) {
      vertex(cx + w * cos(startAngle + angle * i)
        ,cy + h * sin(startAngle + angle * i));
    }
    
    
    endShape(CLOSE);

  }
  
  
  void polygon(int n, float cx, float cy, float r){
    polygon(n, cx, cy, r * 2., r * 2., 0.);
  }
  
}
