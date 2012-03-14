class Robot{
  PVector myCenter;

  int bodyHeight;
  int neckHeight;
  int headRadius;
  float neckY;

  Robot(){
    myCenter = new PVector(60, 420);

    bodyHeight = 260;
    neckHeight = 40;
    headRadius = 45;
    neckY = myCenter.y - bodyHeight - neckHeight - headRadius;
    
    smooth();
    strokeWeight(2);
    
    ellipseMode(RADIUS);

  }
  
  void drawMe(){
    this.drawAntennae();
    this.drawNeck();
    this.drawBody();
    this.drawHead();

  }
  
  private void drawHead(){
    
    //head
    fill(0);
    ellipse(myCenter.x + 12, neckY, headRadius, headRadius);
    
    //eye
    fill(255); //large eye
    ellipse(myCenter.x + 24, neckY - 6, 14, 14);
    fill(0); //pupil
    ellipse(myCenter.x + 24, neckY - 6, 3, 3);
    
    fill(153);
    ellipse(myCenter.x, neckY - 8, 5, 5);
    ellipse(myCenter.x + 30, neckY - 26, 4, 4);
    ellipse(myCenter.x + 41, neckY + 6, 3, 3);
      
  }

  private void drawAntennae(){
    //amtemmae
    stroke(102);
    line(myCenter.x + 12, neckY, myCenter.x - 18, neckY - 43);
    line(myCenter.x + 12, neckY, myCenter.x + 42, neckY - 99);
    line(myCenter.x + 12, neckY, myCenter.x + 78, neckY + 15);
   
  }
  private void drawNeck(){
    stroke(102);
    line(myCenter.x + 2, myCenter.y - bodyHeight, myCenter.x + 2, neckY);
    line(myCenter.x + 12, myCenter.y - bodyHeight, myCenter.x + 12, neckY);
    line(myCenter.x + 22, myCenter.y - bodyHeight, myCenter.x + 22, neckY);

  }
  
  void drawBody(){
    noStroke();
    fill(102);
    ellipse(myCenter.x, myCenter.y - 33, 33, 33); 
    fill(0);
    rect(myCenter.x - 45, myCenter.y - bodyHeight, 90, bodyHeight - 33);
    fill(102);
    rect(myCenter.x - 45, myCenter.y - bodyHeight + 17, 90,6);
  }  

 
}
