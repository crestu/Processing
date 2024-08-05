String str = "S";
float len;
float angle;
void setup(){
 size(900,900); 
 angle = 0.5*PI;
 len = 3*width;
 frameRate(2);
}

void draw(){
  background(200);
  pushMatrix();
  translate(0,height-20);
    for(int i=0; i<str.length(); i++){
    switch(str.charAt(i)){
      case 'F': 
      line(0,0,len,0);
      translate(len,0);
      break;
      case 'l': 
      rotate(-angle);
      break;
      case 'r':
      rotate(angle);
      break;
    }
    }
  if(frameCount<7){
   println(str);
   str = expand(str);
   len *= 0.333333333;
  }
  popMatrix();
}
  
  


String expand(String s){
  String newStr="";
  for(int i=0; i<s.length(); i++){
    switch(s.charAt(i)){
      case 'S':
      newStr += "F";
      break;
      case 'F':
      newStr += "FlFrFrFlF";
      break;
      default:
      newStr += s.charAt(i);
      break;
    }
  }
  return newStr;
}
