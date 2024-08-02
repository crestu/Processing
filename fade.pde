int drawCount = 0;
int maxDraws = 15;  // Set this to the number of times you want to draw the objects

void setup() {
  size(900, 900);
  background(0, 255, 255,10);
}

void draw() {
  if (drawCount < maxDraws) {
    for (int x = 50; x < width - x; x += 140) {
      fill(225, 225, 0, 10);

      // Diagonal top left
      circle(x, x, x);
      // Diagonal top right
      circle(width - x, x, x);
      // Diagonal bottom left
      circle(x, height - x, x);
      // Diagonal bottom right
      circle(width - x, height - x, x);
    }

    for (int x = 70; x < width - x; x += 150) {
      fill(255, 0, 255, 10);

      // Center left
      circle(width / 2 + x, height / 2, x);
      // Center right
      circle(width / 2 - x, height / 2, x);
      // Center top
      circle(width / 2, height / 2 - x, x);
      // Center bottom
      circle(width / 2, height / 2 + x, x);
    }

    drawCount++;
  }
}
