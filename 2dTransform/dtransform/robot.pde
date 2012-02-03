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
