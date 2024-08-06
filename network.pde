void setup() {
  size(900, 900);
  background(0);
  noFill();
  stroke(50,205,50);
  strokeWeight(5);
  
  var w = 100;
  var r = w / 2;
  
  // Define positions of circles in columns and rows
  float[][] positions = {
    {width/5, height/3}, {width/5, (height/3) * 2},
    {width/2, height/5}, {width/2, height/2}, {width/2, (height/5) * 4},
    {(width/5) * 4, height/3}, {(width/5) * 4, (height/3) * 2}
  };
  
  // Draw circles and connections
  for (int i = 0; i < positions.length; i++) {
    float x = positions[i][0];
    float y = positions[i][1];
    circle(x, y, w);
    
    // Draw connections to the next column
    if (i < 2) { // left to center
      for (int j = 2; j < 5; j++) {
        drawLineFromCircle(x, y, positions[j][0], positions[j][1], r);
      }
    } else if (i >= 2 && i < 5) { // center to right
      for (int j = 5; j < 7; j++) {
        drawLineFromCircle(x, y, positions[j][0], positions[j][1], r);
      }
    }
  }
}

// Function to draw a line from the outline of one circle to another
void drawLineFromCircle(float x1, float y1, float x2, float y2, float r) {
  float angle = atan2(y2 - y1, x2 - x1);
  float x1Edge = x1 + cos(angle) * r;
  float y1Edge = y1 + sin(angle) * r;
  float x2Edge = x2 - cos(angle) * r;
  float y2Edge = y2 - sin(angle) * r;
  line(x1Edge, y1Edge, x2Edge, y2Edge);
}
