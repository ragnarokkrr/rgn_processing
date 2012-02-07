BouncingBall bouncingBall;
VectorBouncingBall vectorBouncingBall;
SubTest subTest;
MultTest multTest;
MagTest magTest;
NormalTest normalTest;

MouseAnimation mouseAnimation;

Mover mover;

void setup(){
  size(200, 200);
  background(255);
  //this.bouncingBall = new BouncingBall(); 
  //this.vectorBouncingBall = new VectorBouncingBall();
  //this.subTest = new SubTest();
  //this.multTest = new MultTest();
  //this.magTest = new MagTest();
  //this.normalTest = new NormalTest();
  //mover = new Mover();
  mouseAnimation = new MouseAnimation(); 
}

void draw(){
  //this.bouncingBall.drawMe();
  //this.vectorBouncingBall.drawMe();
  //this.subTest.drawMe();
  //this.multTest.drawMe();
  //this.magTest.drawMe();
  //this.normalTest.drawMe();
  
  //mover.update();
  //mover.checkEdges();
  //mover.display(); 
  mouseAnimation.drawMe();
  
}
