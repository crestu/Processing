int drawCount=0;
int maxDraws = 10;

void setup() {
  size(900, 900);
  background(0,255,255);
}


void draw() {
  
  if(drawCount<maxDraws){

  for (int x = width/2; x<width; x+=150) {

    
    noStroke();
    //top
    fill(255,0,0,10);
    quad(x,0,x+x/2,x/2,x,x,x-x/2,x/2);
    
    //bottom
    fill(0,255,0,10);
    quad(x, x, x+x/2, x+x/2, x, x+x, x-x/2, x+x/2);
    
    //left
    fill(0,0,255,10);
    quad(0,x,x/2,x+x/2,x,x,x/2,x-x/2);
    
    //right
    fill(255,255,0,10);
    quad(x,x,x+x/2,x+x/2,x+x,x,x+x/2,x-x/2);
  }
  
  drawCount++;
  }
  
  
}
