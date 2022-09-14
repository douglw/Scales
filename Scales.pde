/*int myColor = color(227,227,227);
int myColor2 = color(198,198,198);*/

void setup() {
  size(500, 500);
  background(#1A671E);
}

void draw() {
  boolean shift = true;
  for (int y = 580; y >= -40; y-=40) {
    for (int x = 0; x <= 500; x+=90) {
      if (shift == true)
        scale(x+45, y);
      else
        scale(x, y);
    }
    if (shift == true)
      shift = false;
    else
      shift = true;
  }
  /*if(Math.random() < .5 ){
   myColor = color(#F7BEBE);
   }
   else{
   myColor = color(240,194,194);
   }
   if(Math.random() < .5 ){
   myColor2 = color(#F5D2D2);
   }
   else
   myColor2 = color(#FADCDC);*/
}


void scale(int x, int y) {
  beginShape();
  stroke(#9DE399);
  strokeWeight(3);
  fill(#B4F7B8);
  bezier(x-30,y,x-20,y+60,x+20,y+60,x+30,y);
  noStroke();
  fill(#6CE372);
  bezier(x-30,y-10,x-20,y+50,x+20,y+50,x+30,y-10);
  fill(#32A538);
  bezier(x-30,y-20,x-20,y+40,x+20,y+40,x+30,y-20);
  fill(#1A671E);
  bezier(x-30,y-30,x-20,y+30,x+20,y+30,x+30,y-30);
  endShape();
}
