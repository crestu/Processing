import processing.video.*;

Capture video;
int barWidth = 120;
int col;

void setup() {
  size(1200, 900);
  background(255);
  video = new Capture(this, 1200, 900);
  video.start();
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  
  boolean a =false;
  
  

  for (var i=0; i<width; i+=barWidth*2) {
    image(video,i,0,barWidth,height);
     a = true;
  }
 if(a){
   filter(INVERT); 
  }

   for (var i=barWidth; i<width; i+=barWidth*2) {
    image(video,i,0,barWidth,height);
  }
  
  

}
