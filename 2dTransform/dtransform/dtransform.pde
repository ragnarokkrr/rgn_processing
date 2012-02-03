ColorRotation cRotation;
Robot robot;

void setup(){
  //draw1stTrans();
  //drawHouseWithoutTransformation();
  //drawRotation();
  
  //drawCorrectRotation();
  
  //cRotation = new ColorRotation ();
  
//  new ScalingSample().drawScale();
  //new OrderSample().drawSample();
  
  robot = new Robot();
}

void draw(){
  //cRotation.rotateColor();
  robot.drawMe(); 
}
