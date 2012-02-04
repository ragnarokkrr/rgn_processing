BouncingBall bouncingBall;
VectorBouncingBall vectorBouncingBall;
SubTest subTest;
MultTest multTest;

void setup(){
  //this.bouncingBall = new BouncingBall(); 
  //this.vectorBouncingBall = new VectorBouncingBall();
  this.subTest = new SubTest();
  this.multTest = new MultTest();
}

void draw(){
  //this.bouncingBall.drawMe();
  //this.vectorBouncingBall.drawMe();
  //this.subTest.drawMe();
  this.multTest.drawMe();
}
