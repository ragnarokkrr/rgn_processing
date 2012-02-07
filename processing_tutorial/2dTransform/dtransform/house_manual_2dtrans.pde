void drawHouseWithoutTransformation(){
  size(400, 100);

  background(255);  
  
  for (int i = 10; i < 350; i+= 50){
     house(i, 20);    
  }
}

void house(int x, int y){
  //roof
  triangle(
    x + 15, y // top vertex
    ,x , y + 15 //left vertex
    ,x + 30, y +15 //right vertex
    );

  //facade
  rect(x, y + 15, 30, 30);

  //door
  rect(x + 12, y + 30, 10, 15); 
 
  //dotz 
  fill(0, 0, 255);
  noStroke();
  int dotDiam = 3;

  //roof
  ellipse(x + 15, y, dotDiam, dotDiam);
  ellipse(x, y + 15, dotDiam, dotDiam);
  ellipse (x + 30, y + 15, dotDiam, dotDiam);
  
  //facade
  ellipse(x, y + 15 + 30, dotDiam, dotDiam);
  ellipse (x + 30, y + 15 + 30, dotDiam, dotDiam);
  
  fill(255, 0, 0);
  //rect(x + 12, y + 30, 10, 15); 
   ellipse(x + 12, y + 30, dotDiam, dotDiam); 
   ellipse(x + 12 + 10, y + 30, dotDiam, dotDiam); 
   ellipse(x + 12 + 10, y + 30 + 15, dotDiam, dotDiam); 
   ellipse(x + 12 , y + 30 + 15, dotDiam, dotDiam); 
  
  stroke(0);
  fill(255, 255, 255);
}
