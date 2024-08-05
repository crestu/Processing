void setup(){
 size(900,900);
 background(0);
}

int maxCount = 1;
int drawCount = 0;

void draw(){
  
  
  if (drawCount <maxCount){
  translate(width/2,height/2);
  
  for(int x =2;  x<width; x+=32){
    
    
    stroke(255,0,0);
    
    noFill();
    
    rotate(PI/x);
  triangle(0,0, 0,-width/3,-height/3,-width/3);
  
    triangle(0,0, 0,width/3,height/3,width/3);

  }
  drawCount++;
  }
}
