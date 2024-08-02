

void setup() {

  size(900, 900);
  background(0, 255, 255,10);
}

void draw() {


  for (var x=75; x<width-x; x+=200) {
    
    //boolean shapeDrawn = false;
    

    fill(225, 225, 0, 10);

    //diag top left
    circle(x, x, x);    
    //diag top right
    circle(width-x, x, x);
    //diag bot left
    circle(x, height-x, x);
    //diag bot right
    circle(width-x, height-x, x);
  }


  for (var x=75; x<width-x; x+=100) {

    fill(255, 0, 255, 10);

    //center left
    circle(width/2+x, height/2, x);
    //center right
    circle(width/2-x, height/2, x);
    //center top
    circle(width/2, height/2-x, x);
    //center bot
    circle(width/2, height/2+x, x);
  }
 
}
