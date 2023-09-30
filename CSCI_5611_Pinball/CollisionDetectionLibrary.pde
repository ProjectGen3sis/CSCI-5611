// Define a class for circles
/*class Circle {
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
  
  
  
  // Same-side test for line segment intersection

}
*/

boolean sameSide(LineSegment l, Vec2 p1, Vec2 p2){
  float cp1 = cross((l.p2).minus(l.p1), p1.minus(l.p1));
  float cp2 = cross((l.p2).minus(l.p1), p2.minus(l.p1));
  
  return (cp1*cp2) >= 0;
}

float cross(Vec2 v1, Vec2 v2){
  return v1.x*v2.y - v1.y*v2.x;
}

// Function to check collision between two line segments
boolean lineSegmentLineSegmentCollision(LineSegment l1, LineSegment l2) {
  // Test if the endpoints of l2 are on the same side of l1
  if (sameSide(l1, l2.p1, l2.p2)) {
    return false;
  }
  // Test if the endpoints of l1 are on the same side of l2
  if (sameSide(l2, l1.p1, l1.p2)) {
    return false;
  } 
  return true;
  }

// Define a class for axis-aligned boxes
class Box {
  int id;
  float x, y; // Top-left corner
  float width, height;
  boolean touched = false;

  Box(int id, float x, float y, float width, float height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.id = id;
    
  }
}


// Function to check collision between two circles
/*boolean circleCircleCollision(Circle c1, Circle c2) {
  float d = dist(c1.x, c1.y, c2.x, c2.y);
  return d < c1.radius + c2.radius;
  }
*/
// function to check collision between two boxes
boolean boxBoxCollision(Box b1, Box b2) {
return (abs((b1.x + b1.width/2) - (b2.x + b2.width/2)) * 2 < (b1.width + b2.width)) &&
       (abs((b1.y + b1.height/2) - (b2.y + b2.height/2)) * 2 < (b1.height + b2.height));
}

// Function to check collision between a circle and a box
boolean circleBoxCollision(Circle circle, Box box) {
  float closestX = constrain(circle.x, box.x-box.width/2, box.x+box.width/2);
  float closestY = constrain(circle.y, box.y-box.height/2, box.y + box.height/2);

  float d = dist(circle.x, circle.y, closestX, closestY);
  return d < circle.radius;
}

boolean lineBox(LineSegment line, float rx, float ry, float rw, float rh) {

  // Define LineSegments for the four sides of the rectangle
  LineSegment leftSide = new LineSegment(0, new Vec2(rx-rw/2, ry-rh/2), new Vec2(rx+rw/2, ry + rh-ry/2));
  LineSegment rightSide = new LineSegment(0, new Vec2(rx + rw/2, ry-rh/2), new Vec2(rx + rw/2, ry + rh/2));
  LineSegment topSide = new LineSegment(0,new Vec2(rx+rw/2, ry+rh/2), new Vec2(rx - rw/2, ry+rh/2));
  LineSegment bottomSide = new LineSegment(0,new Vec2(rx-rw/2, ry + rh/2), new Vec2(rx - rw/2, ry - rh/2));

  // Check if the line intersects with any of the rectangle's sides
  boolean left = lineSegmentLineSegmentCollision(line, leftSide);
  boolean right = lineSegmentLineSegmentCollision(line, rightSide);
  boolean top = lineSegmentLineSegmentCollision(line, topSide);
  boolean bottom = lineSegmentLineSegmentCollision(line, bottomSide);

  // If ANY of the above are true, the line
  // has hit the rectangle
  if (left || right || top || bottom) {
    return true;
  }
  return false;
}


// Calculate the squared distance from a point (x, y) to a line segment
/*float pointLineDistanceSquared(float x, float y, LineSegment lineSegment) {
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
*/

// CIRCLES
void reportCollisions(Circle[] circles, Box[] boxes, LineSegment[] lineSegments) {
  long startTime = System.currentTimeMillis(); 
  PrintWriter output = createWriter("task10_solution.txt");
  int collisions = 0;
  for (int i = 0; i < circles.length; i++) {
    Circle circle1 = circles[i];
    for (int j = i + 1; j < circles.length; j++) {
      Circle circle2 = circles[j];
      if (circleCircleCollision(circle1, circle2)) {
        if (circle1.touched == false){
          circle1.touched = true;
          collisions++;
          output.println(circle1.id);
        }
        if (circle2.touched == false){
          circle2.touched = true;
          collisions++;
          output.println(circle2.id);
        }
        
      }
    }
    for (int j = 0; j < boxes.length; j++) {
      Box box = boxes[j];
      if (circleBoxCollision(circle1, box)) {
        if (circle1.touched == false){
          circle1.touched = true;
          collisions++;
          output.println(circle1.id);
        }
        if (box.touched == false){
          box.touched = true;
          collisions++;
          output.println(box.id);
        }
      }
    }
    for (int j = 0; j < lineSegments.length; j++) {
      LineSegment lineSegment = lineSegments[j];
      if (circleLineCollision(circle1, lineSegment)) {
        if (circle1.touched == false){
          circle1.touched = true;
          collisions++;
          output.println(circle1.id);
        }
        if (lineSegment.touched == false){
          lineSegment.touched = true;
          collisions++;
          output.println(lineSegment.id);
        }
      }
    }
}

// BOXES
  for (int i = 0; i < boxes.length; i++) {
    Box box1 = boxes[i];
    for (int j = i + 1; j < boxes.length; j++) {
      Box box2 = boxes[j];
      if (boxBoxCollision(box1, box2)) {
        if (box1.touched == false){
          box1.touched = true;
          collisions++;
          output.println(box1.id);
        }
        if (box2.touched == false){
          box2.touched = true;
          collisions++;
          output.println(box2.id);
        }
      }
      }
    
    for (int j = 0; j < lineSegments.length; j++) {
      LineSegment lineSegment = lineSegments[j];
      if (lineBox(lineSegment, box1.x, box1.y, box1.width, box1.height)) {
        if (box1.touched == false){
          box1.touched = true;
          collisions++;
          output.println(box1.id);
        }
        if (lineSegment.touched == false){
          lineSegment.touched = true;
          collisions++;
          output.println(lineSegment.id);
        }
      }
    }
    for (int j = 0; j < circles.length; j++) {
      Circle circle = circles[j];
      if(circleBoxCollision(circle, box1)) {
        if (box1.touched == false){
          box1.touched = true;
          collisions++;
          output.println(box1.id);
        }
        if (circle.touched == false){
          circle.touched = true;
          collisions++;
          output.println(circle.id);
        }
      }
    }   
}
// LINES
  for (int i = 0; i < lineSegments.length; i++) {
    LineSegment line1 = lineSegments[i];
    for (int j = i + 1; j < lineSegments.length; j++) {
      LineSegment line2 = lineSegments[j];
      if (lineSegmentLineSegmentCollision(line1, line2)) {
        if (line1.touched == false){
          line1.touched = true;
          collisions++;
          output.println(line1.id);
        }
        if (line2.touched == false){
          line2.touched = true;
          collisions++;
          output.println(line2.id);
        }
      }
    
      for (int k = 0; k < circles.length; k++) {
      Circle circle1 = circles[k];
      if (circleLineCollision(circle1, line1)) {
        if (line1.touched == false){
          line1.touched = true;
          collisions++;
          output.println(line1.id);
        }
        if (circle1.touched == false){
          circle1.touched = true;
          collisions++;
          output.println(circle1.id);
        }
      }
    }
    for (int k = 0; k < boxes.length; k++) {
      Box box = boxes[k];
      if (lineBox(line1, box.x, box.y, box.width, box.height)) {
        if (line1.touched == false){
          line1.touched = true;
          collisions++;
          output.println(line1.id);
        }
        if (box.touched == false){
          box.touched = true;
          collisions++;
          output.println(box.id);
        }
      }
    }
  }
}
long endTime = System.currentTimeMillis(); 
output.println("Collisions: " + collisions);
output.println("Duration: " + (endTime - startTime) + " ms.");
output.flush();  
output.close(); 

exit();
}




 
