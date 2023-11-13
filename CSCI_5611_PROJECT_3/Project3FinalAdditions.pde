//Inverse Kinematics Multi Link IK
// Ntsav Royal Lee and Seng Thao

void setup(){
  size(1000,800);
  surface.setTitle("Inverse Kinematics Multi Link Project 3");
}

// Objects: Circle
Vec2 object1 = new Vec2(200,500);
Vec2 object2 = new Vec2(200,500);
Vec2 object3 = new Vec2(750,350);
Vec2 object4 = new Vec2(500,100);
float robject1 = 20;
float robject2 = 100;
float robject3 = 70;
float robject4 = 70;

// SPINE JOINTS
// Root
Vec2 root = new Vec2(500,680);

// Lower Back
float l0 = 150; 
float a0 = 0; 
float ShoulderLeftJointLimitMin = radians(260);
float ShoulderLeftJointLimitMax = radians(280);

// Upper Back
float l1 = 170;
float a1 = 0; 
float LeftBicepLimit = radians(25);

Vec2 start_l1, endPoint;

void fk(){
  start_l1 = new Vec2(cos(a0)*l0,sin(a0)*l0).plus(root);
  endPoint = new Vec2(cos(a0+a1)*l1,sin(a0+a1)*l1).plus(start_l1);
}

// LEFT ARM JOINTS

// Upper Left Arm
float larm0 = 100; 
float langle0 = radians(180); 
float upperLeftArmLimitMin = radians(120);
float upperLeftArmLimitMax = radians(240);

// Lower Left Arm
float larm1 = 100;
float langle1 = radians(90); 
float lowerLeftArmLimit = radians(130);

// Left Hand
float larm2 = 20;
float langle2 = 0;
float leftHandLimit = radians(90);

Vec2 leftarm_l1, leftarm_l2, leftarm_endPoint;

void leftArmSolve(Vec2 object){
  Vec2 goal = object;
  Vec2 startToGoal, startToEndEffector;
  float dotProd, angleDiff;
  
  //Update hand joint
  startToGoal = goal.minus(leftarm_l2);
  startToEndEffector = leftarm_endPoint.minus(leftarm_l2);
  dotProd = dot(startToGoal.normalized(),startToEndEffector.normalized());
  dotProd = clamp(dotProd,-1,1);
  angleDiff = acos(dotProd);
  if (cross(startToGoal,startToEndEffector) < 0)
    langle2 += angleDiff;
  else
    langle2 -= angleDiff;
    
  langle2 = constrain(langle2, -leftHandLimit, leftHandLimit);
  leftArmfk(); //Update link positions with fk (e.g. end effector changed)
  
  //Update lower left arm joint
  startToGoal = goal.minus(leftarm_l1);
  startToEndEffector = leftarm_endPoint.minus(leftarm_l1);
  dotProd = dot(startToGoal.normalized(),startToEndEffector.normalized());
  dotProd = clamp(dotProd,-1,1);
  angleDiff = acos(dotProd);
  
  if (cross(startToGoal,startToEndEffector) < 0) langle1 += angleDiff;
  else langle1 -= angleDiff;
  leftArmfk();
  langle1 = constrain(langle1, -lowerLeftArmLimit, lowerLeftArmLimit);
  leftArmfk(); //Update link positions with fk (e.g. end effector changed)
  
  //Update upper left arm joint
  startToGoal = goal.minus(endPoint);
  if (startToGoal.length() < .0001) return;
  startToEndEffector = leftarm_endPoint.minus(endPoint);
  dotProd = dot(startToGoal.normalized(),startToEndEffector.normalized());
  dotProd = clamp(dotProd,-1,1);
  angleDiff = acos(dotProd);
  if (cross(startToGoal,startToEndEffector) < 0)
   langle0 += angleDiff;
  else
    langle0 -= angleDiff;
    
  langle0 = constrain(langle0, upperLeftArmLimitMin, upperLeftArmLimitMax);
  leftArmfk(); //Update link positions with fk (e.g. end effector changed)
  
  //Update elbow joint
  startToGoal = goal.minus(start_l1);
  startToEndEffector = endPoint.minus(start_l1);
  dotProd = dot(startToGoal.normalized(),startToEndEffector.normalized());
  dotProd = clamp(dotProd,-1,1);
  angleDiff = acos(dotProd);
  if (cross(startToGoal,startToEndEffector) < 0)
    a1 += angleDiff;
  else
    a1 -= angleDiff;
    
  a1 = constrain(a1, -LeftBicepLimit, LeftBicepLimit);
  fk(); //Update link positions with fk (e.g. end effector changed)
  
  //Update shoulder joint
  startToGoal = goal.minus(root);
  if (startToGoal.length() < .0001) return;
  startToEndEffector = endPoint.minus(root);
  dotProd = dot(startToGoal.normalized(),startToEndEffector.normalized());
  dotProd = clamp(dotProd,-1,1);
  angleDiff = acos(dotProd);
  if (cross(startToGoal,startToEndEffector) < 0)
    a0 += angleDiff;
  else
    a0 -= angleDiff;
  /*TODO: Shoulder joint limits here*/
  a0 = constrain(a0, ShoulderLeftJointLimitMin, ShoulderLeftJointLimitMax);
  
  fk(); //Update link positions with fk (e.g. end effector changed)
}

void leftArmfk(){
  leftarm_l1 = new Vec2(cos(langle0)*larm0,sin(langle0)*larm0).plus(endPoint);
  leftarm_l2 = new Vec2(cos(langle0+langle1)*larm1,sin(langle0+langle1)*larm1).plus(leftarm_l1);
  leftarm_endPoint = new Vec2(cos(langle0+langle1+langle2)*larm2,sin(langle0+langle1+langle2)*larm2).plus(leftarm_l2);
}

float armW = 20;

// RIGHT ARM JOINTS

// Upper Right Arm
float rarm0 = 100; 
float rangle0 = radians(350);
float upperRightArmLimit = radians(60);

// Lower Right Arm
float rarm1 = 100;
float rangle1 = radians(300); 
float lowerRightArmLimit = radians(130);

// Right Hand
float rarm2 = 20;
float rangle2 = 0;
float rightHandLimit = radians(90);

Vec2 rightarm_l1, rightarm_l2, rightarm_endPoint;

void rightArmSolve(Vec2 object){
  Vec2 goal = object;
  
  Vec2 startToGoal, startToEndEffector;
  float dotProd, angleDiff;
  
  //Update hand joint
  startToGoal = goal.minus(rightarm_l2);
  startToEndEffector = rightarm_endPoint.minus(rightarm_l2);
  dotProd = dot(startToGoal.normalized(),startToEndEffector.normalized());
  dotProd = clamp(dotProd,-1,1);
  angleDiff = acos(dotProd);
  if (cross(startToGoal,startToEndEffector) < 0)
    rangle2 += angleDiff;
  else
    rangle2 -= angleDiff;
    
  rangle2 = constrain(rangle2, -rightHandLimit, rightHandLimit);
  rightArmfk(); //Update link positions with fk (e.g. end effector changed)
  
  //Update lower right arm joint
  startToGoal = goal.minus(rightarm_l1);
  startToEndEffector = rightarm_endPoint.minus(rightarm_l1);
  dotProd = dot(startToGoal.normalized(),startToEndEffector.normalized());
  dotProd = clamp(dotProd,-1,1);
  angleDiff = acos(dotProd);
  if (cross(startToGoal,startToEndEffector) < 0)
    rangle1 += angleDiff;
  else
    rangle1 -= angleDiff;
    
  rangle1 = constrain(rangle1, -lowerRightArmLimit, lowerRightArmLimit);
  rightArmfk(); //Update link positions with fk (e.g. end effector changed)
  
  //Update upper right arm joint
  startToGoal = goal.minus(endPoint);
  if (startToGoal.length() < .0001) return;
  startToEndEffector = rightarm_endPoint.minus(endPoint);
  dotProd = dot(startToGoal.normalized(),startToEndEffector.normalized());
  dotProd = clamp(dotProd,-1,1);
  angleDiff = acos(dotProd);
  if (cross(startToGoal,startToEndEffector) < 0)
   rangle0 += angleDiff;
  else
   rangle0 -= angleDiff;
  
  rangle0 = constrain(rangle0, -upperRightArmLimit, upperRightArmLimit);
  rightArmfk(); //Update link positions with fk (e.g. end effector changed)
  
  //Update elbow joint
  startToGoal = goal.minus(start_l1);
  startToEndEffector = endPoint.minus(start_l1);
  dotProd = dot(startToGoal.normalized(),startToEndEffector.normalized());
  dotProd = clamp(dotProd,-1,1);
  angleDiff = acos(dotProd);
  if (cross(startToGoal,startToEndEffector) < 0)
    a1 += angleDiff;
  else
    a1 -= angleDiff;
    
  a1 = constrain(a1, -LeftBicepLimit, LeftBicepLimit);
  rightArmfk(); //Update link positions with fk (e.g. end effector changed)
  
  //Update shoulder joint
  startToGoal = goal.minus(root);
  if (startToGoal.length() < .0001) return;
  startToEndEffector = endPoint.minus(root);
  dotProd = dot(startToGoal.normalized(),startToEndEffector.normalized());
  dotProd = clamp(dotProd,-1,1);
  angleDiff = acos(dotProd);
  if (cross(startToGoal,startToEndEffector) < 0)
    a0 += angleDiff;
  else
    a0 -= angleDiff;
  /*TODO: Shoulder joint limits here*/
  a0 = constrain(a0, ShoulderLeftJointLimitMin, ShoulderLeftJointLimitMax);
  
  rightArmfk(); //Update link positions with fk (e.g. end effector changed)
}

void rightArmfk(){
  rightarm_l1 = new Vec2(cos(rangle0)*rarm0,sin(rangle0)*rarm0).plus(endPoint);
  rightarm_l2 = new Vec2(cos(rangle0+rangle1)*rarm1,sin(rangle0+rangle1)*rarm1).plus(rightarm_l1);
  rightarm_endPoint = new Vec2(cos(rangle0+rangle1+rangle2)*rarm2,sin(rangle0+rangle1+rangle2)*rarm2).plus(rightarm_l2);
}
 
boolean aPressed, sPressed, onePressed, twoPressed, threePressed, leftPressed, rightPressed, upPressed, downPressed;

void keyPressed() {
  if (key == 'a') aPressed = true;
  if (key == 's') sPressed = true;
  if (key == '1') onePressed = true;
  if (key == '2') twoPressed = true;
  if (key == '3') threePressed = true;
  if (keyCode == LEFT) leftPressed = true;
  if (keyCode == RIGHT) rightPressed = true;
  if (keyCode == UP) upPressed = true; 
  if (keyCode == DOWN) downPressed = true;
}

void keyReleased(){
  if (key == 'a') aPressed = false;
  if (key == 's') sPressed = false;
  if (key == '1') onePressed = false;
  if (key == '2') twoPressed = false;
  if (key == '3') threePressed = false;
  if (keyCode == LEFT) leftPressed = false;
  if (keyCode == RIGHT) rightPressed = false;
  if (keyCode == UP) upPressed = false; 
  if (keyCode == DOWN) downPressed = false;
}

void draw(){
  object1 = new Vec2(mouseX, mouseY);
  fk();
  leftArmfk();
  rightArmfk();
  //spineSolve();
  Vec2 objectToSolve = object1;
  
  if (onePressed){
    objectToSolve = object2;
  }
  
  if (twoPressed){
    objectToSolve = object3;
  }
  
  if (threePressed){
    objectToSolve = object4;
  }
  
  if (leftPressed){
    root.add(new Vec2(-5, 0));
  }
  
  if (rightPressed){
    root.add(new Vec2(5, 0));
  }
  
  if (aPressed){
    leftArmfk();
    leftArmSolve(objectToSolve);
  }
  
  if (sPressed){
    rightArmfk();
    rightArmSolve(objectToSolve);
  }
  
  background(250, 250, 250);
  
  // Object 1
  pushMatrix();
  circle(object1.x, object1.y, robject1);
  popMatrix();
  
  // Object 2
  pushMatrix();
  circle(object2.x, object2.y, robject2);
  popMatrix();
  
  // Object 3
  pushMatrix();
  circle(object3.x, object3.y, robject3);
  popMatrix();
  
  // Object 4
  pushMatrix();
  circle(object4.x, object4.y, robject4);
  popMatrix();
  
  // SPINE
  fill(255,255,255); //Root
  pushMatrix();
  translate(root.x,root.y);
  rect(-20,-20,40,40);
  popMatrix();

  pushMatrix();
  translate(root.x,root.y);
  rotate(a0);
  rect(0, -armW/2, l0, armW);
  popMatrix();
  
  pushMatrix();
  translate(start_l1.x,start_l1.y);
  rotate(a0+a1);
  rect(0, -armW/2, l1, armW);
  popMatrix();
  
  // LEFT ARM
  fill(255,0,0);
  pushMatrix();
  translate(endPoint.x,endPoint.y);
  rotate(langle0);
  rect(0, -armW/2, larm0, armW);
  popMatrix();
  
  pushMatrix();
  translate(leftarm_l1.x, leftarm_l1.y);
  rotate(langle0+langle1);
  rect(0, -armW/2, larm1, armW);
  popMatrix();
  
  pushMatrix();
  translate(leftarm_l2.x, leftarm_l2.y);
  rotate(langle0+langle1+langle2);
  rect(0, -armW/2, larm2, armW);
  popMatrix();
  
  // RIGHT ARM
  fill(0,0,255);
  pushMatrix();
  translate(endPoint.x,endPoint.y);
  rotate(rangle0);
  rect(0, -armW/2, rarm0, armW);
  popMatrix();
  
  pushMatrix();
  translate(rightarm_l1.x, rightarm_l1.y);
  rotate(rangle0+rangle1);
  rect(0, -armW/2, rarm1, armW);
  popMatrix();
  
  pushMatrix();
  translate(rightarm_l2.x, rightarm_l2.y);
  rotate(rangle0+rangle1+rangle2);
  rect(0, -armW/2, rarm2, armW);
  popMatrix();
  
  fill(0, 0, 0);
  
  if (aPressed){
  PFont f = createFont("Georgia", 64);
  fill(255,0,0);
  textFont(f);
  textSize(30);
  text("Left Arm Activated", 100, 700);
  }
  
  if (sPressed){
  PFont f = createFont("Georgia", 64);
  fill(0,0,255);
  textFont(f);
  textSize(30);
  text("Right Arm Activated", 650, 700);
  }
  
  if (aPressed && sPressed){
    fill(128,0,128);
  }
}

//-----------------
// Vector Library
//-----------------

//Vector Library
//CSCI 5611 Vector 2 Library [Example]
// Stephen J. Guy <sjguy@umn.edu>

public class Vec2 {
  public float x, y;
  
  public Vec2(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  public String toString(){
    return "(" + x+ "," + y +")";
  }
  
  public float length(){
    return sqrt(x*x+y*y);
  }
  
  public Vec2 plus(Vec2 rhs){
    return new Vec2(x+rhs.x, y+rhs.y);
  }
  
  public void add(Vec2 rhs){
    x += rhs.x;
    y += rhs.y;
  }
  
  public Vec2 minus(Vec2 rhs){
    return new Vec2(x-rhs.x, y-rhs.y);
  }
  
  public void subtract(Vec2 rhs){
    x -= rhs.x;
    y -= rhs.y;
  }
  
  public Vec2 times(float rhs){
    return new Vec2(x*rhs, y*rhs);
  }
  
  public void mul(float rhs){
    x *= rhs;
    y *= rhs;
  }
  
  public void clampToLength(float maxL){
    float magnitude = sqrt(x*x + y*y);
    if (magnitude > maxL){
      x *= maxL/magnitude;
      y *= maxL/magnitude;
    }
  }
  
  public void setToLength(float newL){
    float magnitude = sqrt(x*x + y*y);
    x *= newL/magnitude;
    y *= newL/magnitude;
  }
  
  public void normalize(){
    float magnitude = sqrt(x*x + y*y);
    x /= magnitude;
    y /= magnitude;
  }
  
  public Vec2 normalized(){
    float magnitude = sqrt(x*x + y*y);
    return new Vec2(x/magnitude, y/magnitude);
  }
  
  public float distanceTo(Vec2 rhs){
    float dx = rhs.x - x;
    float dy = rhs.y - y;
    return sqrt(dx*dx + dy*dy);
  }
}

Vec2 interpolate(Vec2 a, Vec2 b, float t){
  return a.plus((b.minus(a)).times(t));
}

float interpolate(float a, float b, float t){
  return a + ((b-a)*t);
}

float dot(Vec2 a, Vec2 b){
  return a.x*b.x + a.y*b.y;
}

float cross(Vec2 a, Vec2 b){
  return a.x*b.y - a.y*b.x;
}


Vec2 projAB(Vec2 a, Vec2 b){
  return b.times(a.x*b.x + a.y*b.y);
}

float clamp(float f, float min, float max){
  if (f < min) return min;
  if (f > max) return max;
  return f;
}
 
boolean circleBox(float cx, float cy, float radius, float sx, float sy, float sw, float sh){
  // Variables to store the closest edges of the box to the circle
  float testX = cx;
  float testY = cy;
  
  // Find the closest edges of the box
  if (cx < sx) testX = sx;
  else if (cx > sx+sw) testX = sx+sw;
  if (cy < sy) testY = sy;
  else if (cy > sy+sh) testY = sy+sh;
  
  // Find the distance from the closest edges of the box
  float distX = cx-testX;
  float distY = cy-testY;
  float distance = sqrt((distX*distX) + (distY*distY));

  if (distance <= radius) {
    return true;
  }
  return false;
}
 
