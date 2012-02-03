class Robot{
  int armAngle = 0;
  int angleChange = 5;
  final int ANGLE_LIMIT = 135;

  Robot(){
    size(200,200);
    background(255);
    smooth();
   
  }
  
  void drawMe(){
    background(255);

    pushMatrix();
    translate(50, 50);// position robot in center

    drawBody();
    
    calculateArmAngle();
    
    popMatrix();
  }

  void calculateArmAngle(){
    armAngle += angleChange;
    //if the arm has moved past its limit
    // reverse direction and set within linit
    //constraint
    if(armAngle > ANGLE_LIMIT || armAngle < 0){
       angleChange = -angleChange; 
       armAngle += angleChange;
    }
  }
  
  void drawBody(){
    noStroke();
    fill(38, 38, 200);
    
    rect (20, 0, 38, 30); //head
    rect (14, 32, 50, 50); //body
    
    drawLeftArm();
    drawRightArm();
    
    rect(22, 84, 16, 50); //left leg
    rect(40, 84, 16, 50); //right leg

    fill(222, 222, 249);    
    ellipse (30, 12, 12, 12); //left eye
    ellipse(47, 12, 12, 12); // right eye
  }
  
  void drawLeftArm(){
    //rect(0, 32, 12, 35); // left arm
    pushMatrix();
    translate(12, 32);
    rotate(radians(armAngle));
    rect(-12, 0, 12, 37);
    popMatrix();
    
  }  
  
  void drawRightArm(){
    //rect(66, 32, 12, 35); //right arm 
    pushMatrix();
    translate(66, 32);
    rotate(radians(-armAngle));
    rect(0, 0, 12, 37);
    popMatrix();
    
  }
}

class TestAtan2{
    TestAtan2(){
      size(200, 200);
    }
    
    void drawTest(){
      float angle = atan2(mouseY -100, mouseX -100);
      
      background(255);
      pushMatrix();
      translate(100, 100);
      rotate(angle);
      rect(0, 0, 50, 10);
            
      popMatrix();
    }
    

    
}


class InteractiveRobot{
  /* where upper left of robot appears on screen */
  final int ROBOT_X= 50; 
  final int ROBOT_Y = 50;
  /* Robots midpoint and arm pivot pointd */
  final int MIDPOINT_X = 39; // xpos=14, len=50 :. xpos + len/2  
  final int LEFT_PIVOT_X = 12;
  final int RIGHT_PIVOT_X = 66;
  final int PIVOT_Y = 32;

  
  float leftArmAngle = 0.;
  float rightArmAngle = 0.;
  
  InteractiveRobot(){
     size(200, 200);
     smooth();
     frameRate(30);
  }
  
  void drawMe(){
    background(255);
    pushMatrix();
    translate(ROBOT_X, ROBOT_Y);

    computeArmsAngles();

    drawBody();
    
    popMatrix();
  }  

  void computeArmsAngles(){
    /*
     * These variables are for mouseX and mouseY,
     * adjusted to be relative to the robot's coordinate system
     * instead of the window's coordinate system.
     */
    float mX = mouseX - ROBOT_X;
    float mY = mouseY - ROBOT_Y;
    
    if(mousePressed){
      computeLeftArm(mX, mY);
      computeRightArm(mX, mY);
    }
  }  

  void computeLeftArm(float mX, float mY){
    if(mX < MIDPOINT_X){
      this.leftArmAngle = atan2(mY - PIVOT_Y, mX - LEFT_PIVOT_X) - HALF_PI;      
    }
  }
  
  void computeRightArm(float mX, float mY){
    if(mX >= MIDPOINT_X){
      this.rightArmAngle = atan2(mY - PIVOT_Y, mX - RIGHT_PIVOT_X) - HALF_PI; 
    }
  }

  void drawLeftArm(){
    pushMatrix();
    translate (12, 32);
    rotate(this.leftArmAngle);
    rect(-12, 0, 12, 37);    
    popMatrix();
  }
  
  void drawRightArm(){
    pushMatrix();
    translate(66, 32);
    rotate(this.rightArmAngle);
    rect(0, 0, 12, 37);
    popMatrix();
  }

  void drawBody(){
    noStroke();
    fill(38, 38, 200);
    
    rect (20, 0, 38, 30); //head
    rect (14, 32, 50, 50); //body
    
    drawLeftArm();
    drawRightArm();
    
    rect(22, 84, 16, 50); //left leg
    rect(40, 84, 16, 50); //right leg

    fill(222, 222, 249);    
    ellipse (30, 12, 12, 12); //left eye
    ellipse(47, 12, 12, 12); // right eye
  }
  
}

