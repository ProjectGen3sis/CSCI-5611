//gg its joever, bouta get no points

import peasy.*;

PeasyCam camera;

import processing.sound.*;

SoundFile file;
SoundFile collisionCheck;

int numBalls = 5;
float r = 5;
float genRate = 20;
Vec2 pos[] = new Vec2[numBalls];
Vec2 vel[] = new Vec2[numBalls];
float radius[] = new float[numBalls];
float mass[] = new float[numBalls];
float cor = 0.7f;
Vec2 gravity = new Vec2(0,400);
int collisionDetection = 0;


PImage background;
PImage coin1;
PImage coin2;
PImage coin3;
PImage coin4;
PImage coin5;


Vec2 spherePos = new Vec2(100,300);
float sphereRadius = 30;

Vec2 spherePos2 = new Vec2(200,300);
float sphereRadius2 = 30;

Vec2 spherePos3 = new Vec2(300,300);
float sphereRadius3 = 30;

Vec2 spherePos4 = new Vec2(400,300);
float sphereRadius4 = 30;

Vec2 spherePos5 = new Vec2(500,300);
float sphereRadius5 = 30;


LineSegment lengthyboy = new LineSegment (0, new Vec2(0, 500), new Vec2 (300, 500));

LineSegment lengthyboy2 = new LineSegment (0, new Vec2(600, 500), new Vec2 (200, 500));


class Circle {
  float x, y; // Center coordinates
  float radius; // Radius
  int id;
  boolean touched = false;

  Circle(int id, float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.id = id;
  }
}

// Define a class for line segments
class LineSegment {
  int id;
  boolean touched = false;
  Vec2 p1; // Start point
  Vec2 p2; // End point

  LineSegment(int id, Vec2 p1, Vec2 p2) {
    this.p1 = p1;
    this.p2 = p2;
    this.id = id;
  }

}

boolean circleCircleCollision(Circle c1, Circle c2) {
  float d = dist(c1.x, c1.y, c2.x, c2.y);
  return d < c1.radius + c2.radius;
  }

//Calculate the squared distance from a point (x, y) to a line segment
public float pointLineDistanceSquared(float x, float y, LineSegment lineSegment) {
  float x1 = lineSegment.p1.x;
  float y1 = lineSegment.p1.y;
  float x2 = lineSegment.p2.x;
  float y2 = lineSegment.p2.y;
  
  float dx = x2 - x1;
  float dy = y2 - y1;
  
  // Calculate the parametric value (t) where the closest point on the line falls
  float t = ((x - x1) * dx + (y - y1) * dy) / (dx * dx + dy * dy);
  
  // Check if the closest point falls within the line segment
  if (t < 0) {
    // Closest point is beyond the 'p1' end of the segment
    return distSquared(x, y, x1, y1);
  } else if (t > 1) {
    // Closest point is beyond the 'p2' end of the segment
    return distSquared(x, y, x2, y2);
  } else {
    // Closest point falls within the line segment
    float closestX = x1 + t * dx;
    float closestY = y1 + t * dy;
    return distSquared(x, y, closestX, closestY);
  }
}

// Calculate the squared distance between two points
float distSquared(float x1, float y1, float x2, float y2) {
  float dx = x2 - x1;
  float dy = y2 - y1;
  return dx * dx + dy * dy;
}

boolean circleLineCollision(Circle circle, LineSegment lineSegment) {
  // Calculate the squared distance from the circle's center to the line segment
  float distSq = pointLineDistanceSquared(circle.x, circle.y, lineSegment);
  
  // Check if the squared distance is less than or equal to the squared radius of the circle
  return distSq <= (circle.radius * circle.radius);
}




void setup(){
  size(600, 600, P3D);
  
  camera = new PeasyCam(this, 100);
  
  file = new SoundFile (this, "Arcade retro game over.wav");
  file.play();
  
  background = loadImage("mario.jpg");
  coin1 = loadImage("Retro-Coin-icon.png");
  coin2 = loadImage("Retro-Coin-icon.png");
  coin3 = loadImage("Retro-Coin-icon.png");
  coin4 = loadImage("Retro-Coin-icon.png");
  coin5 = loadImage("Retro-Coin-icon.png");
  //camera = new Camera();
  surface.setTitle("A pinball game?");
  //Initial boid positions and velocities
  for (int i = 0; i < numBalls; i++){
    pos[i] = new Vec2(300+random(10),50+random(10));
    vel[i] = new Vec2(random(40),100+random(20));
    mass[i] = 3;
    radius[i] = 5;
  }
  strokeWeight(2); //Draw thicker lines 
}
  

void update(float dt){
  for (int i = 0; i < numBalls; i++){
    vel[i].add(gravity.times(dt));
    pos[i].add(vel[i].times(dt));
    if (pos[i].y > height - r){
      pos[i].y = height - r;
    }
    if (pos[i].y < r){
      pos[i].y = r;
      vel[i].y *= -0.8;
    }
    if (pos[i].x > width - r){
      pos[i].x = width - r;
      vel[i].x *= -0.8;
    }
    if (pos[i].x < r){
      pos[i].x = r;
      vel[i].x *= -0.8;
    }
    
    //ball-ball collision
    for (int j = i + 1; j < numBalls; j++){
      Vec2 delta = pos[i].minus(pos[j]);
      float dist = delta.length();
      if (dist < radius[i] + radius[j]){
        // Move Balls out of Collision
        float overlap = 0.5f * (dist - radius[i] - radius[j]);
        pos[i].subtract(delta.normalized().times(overlap));
        pos[j].add(delta.normalized().times(overlap));

        // Collision Response for Circles
        Vec2 dir = delta.normalized();
        float v1 = dot(vel[i], dir);
        float v2 = dot(vel[j], dir);
        float m1 = mass[i];
        float m2 = mass[j];   
        float new_v1 = (m1 * v1 + m2 * v2 - m2 * (v1 - v2) * cor) / (m1 + m2);
        float new_v2 = (m1 * v1 + m2 * v2 - m1 * (v2 - v1) * cor) / (m1 + m2);
        vel[i].add(dir.times(new_v1 - v1)); 
        vel[j].add(dir.times(new_v2 - v2)); 
        
      
    }
  }
     if(pos[i].distanceTo(spherePos) < (sphereRadius+r)){
      Vec2 normal = (pos[i].minus(spherePos)).normalized();
      pos[i] = spherePos.plus(normal.times(sphereRadius+r).times(1.01));
      Vec2 velNormal = normal.times(dot(vel[i],normal));
      vel[i].subtract(velNormal.times(1 + cor));
      collisionDetection += 1;
      file.play();
    }
    
    if(pos[i].distanceTo(spherePos2) < (sphereRadius2+r)){
      Vec2 normal = (pos[i].minus(spherePos2)).normalized();
      pos[i] = spherePos2.plus(normal.times(sphereRadius2+r).times(1.01));
      Vec2 velNormal = normal.times(dot(vel[i],normal));
      vel[i].subtract(velNormal.times(1 + cor));
      collisionDetection += 1;
      file.play();
    }
    
    if(pos[i].distanceTo(spherePos3) < (sphereRadius3+r)){
      Vec2 normal = (pos[i].minus(spherePos3)).normalized();
      pos[i] = spherePos3.plus(normal.times(sphereRadius3+r).times(1.01));
      Vec2 velNormal = normal.times(dot(vel[i],normal));
      vel[i].subtract(velNormal.times(1 + cor));
      collisionDetection += 1;
      file.play();
    }
    
    if(pos[i].distanceTo(spherePos4) < (sphereRadius4+r)){
      Vec2 normal = (pos[i].minus(spherePos4)).normalized();
      pos[i] = spherePos4.plus(normal.times(sphereRadius4+r).times(1.01));
      Vec2 velNormal = normal.times(dot(vel[i],normal));
      vel[i].subtract(velNormal.times(1 + cor));
      collisionDetection += 1;
      file.play();
    }
    
    if(pos[i].distanceTo(spherePos5) < (sphereRadius5+r)){
      Vec2 normal = (pos[i].minus(spherePos5)).normalized();
      pos[i] = spherePos5.plus(normal.times(sphereRadius5+r).times(1.01));
      Vec2 velNormal = normal.times(dot(vel[i],normal));
      vel[i].subtract(velNormal.times(1 + cor));
      collisionDetection += 1;
      file.play();
      
    }


    if (circleLineCollision(new Circle(0, pos[i].x, pos[i].y, r), lengthyboy)){
      if (pos[i].y-r < (lengthyboy.p1).y) pos[i].y = (lengthyboy.p1).y - r - 0.1;
      else pos[i].y = (lengthyboy.p1).y + r + 0.1;
      
      vel[i].y *= -1.1;
      file.play();
      
   }
   
    if (circleLineCollision(new Circle(0, pos[i].x, pos[i].y, r), lengthyboy2)){
      if (pos[i].y-r < (lengthyboy2.p2).y) pos[i].y = (lengthyboy2.p1).y - r - 0.1;
      else pos[i].y = (lengthyboy2.p2).y + r + 0.1;
      
      vel[i].y *= -1.1;
      file.play();
   }    
  }
  
}
void keyPressed(){
  if (key == ' ') paused = !paused;
}

boolean paused = true;
void draw(){
  if (!paused) update(1.0/frameRate);
  background(255,255,255); 
  
  beginShape();
  texture(background);
  vertex(0, 0, 0, 0, 0);
  vertex(800, 0, 0, background.width, 0);
  vertex(800, 550, 0, background.width, background.height);
  vertex(0, 550, 0, 0, background.height);
  endShape();
  strokeWeight(2);
  line((lengthyboy.p1).x, (lengthyboy.p1).y, (lengthyboy.p2).x, (lengthyboy.p2).y);
  line((lengthyboy2.p1).x, (lengthyboy2.p1).y, (lengthyboy2.p2).x, (lengthyboy2.p2).y);
  stroke(0,0,0);
  fill(255,255,255);
  for (int i = 0; i < numBalls; i++){
    circle(pos[i].x, pos[i].y, r*2); 
  }
  textSize(50);
  fill(0);
  text("Collision detect: " + collisionDetection, 30, 30); //detect the collisions when the balls hit the circles
  
  fill(180,60,40);
  circle(spherePos.x, spherePos.y, sphereRadius*2);
  
  // Center the quad
  // Apply the texture to a quad
  beginShape();
  texture(coin1);
  vertex(300, 500, 100, 0, 0);
  vertex(300, 500, 100, coin1.width, 0);
  vertex(400, 600, 100, coin1.width, coin1.height);
  vertex(400, 600, 100, 0, coin1.height);
  endShape();
  circle(spherePos2.x, spherePos2.y, sphereRadius2*2);
  circle(spherePos3.x, spherePos3.y, sphereRadius3*2);
  circle(spherePos4.x, spherePos4.y, sphereRadius4*2);
  circle(spherePos5.x, spherePos5.y, sphereRadius5*2);
}
  
