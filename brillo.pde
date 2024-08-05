int maxDraw = 3;
int drawCount =0;

void setup() {
  size(900, 900);
  background(0);
}

void draw() {
  if(drawCount<maxDraw){
  noStroke();
  fill(0, 255, 255,10);

  for (int x=2; x<width; x+=2){
    rotate(PI/x);
    triangle(width,width,width/2,width/6, width/6,width/6);
  }
  drawCount++;
  }
}
