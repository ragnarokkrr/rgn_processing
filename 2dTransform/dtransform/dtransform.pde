ColorRotation cRotation;
Robot robot;
TestAtan2 testAtan2;

InteractiveRobot interactiveRobot;
void setup(){
  //draw1stTrans();
  //drawHouseWithoutTransformation();
  //drawRotation();
  
  //drawCorrectRotation();
  
  //cRotation = new ColorRotation ();
  
//  new ScalingSample().drawScale();
  //new OrderSample().drawSample();
  
  //robot = new Robot();
 // testAtan2 = new TestAtan2();
 interactiveRobot = new InteractiveRobot();
}

void draw(){
  //cRotation.rotateColor();
  //robot.drawMe(); 
  //testAtan2.drawTest();
  
  
  interactiveRobot.drawMe();
  
}
