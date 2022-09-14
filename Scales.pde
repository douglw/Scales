int myColor = color(240,194,194);
int myColor2 = color(250, 220, 220);

void setup(){
  size(500,500);
  background(#d9c5c5);
}

void draw(){
  boolean shift = true;
  for(int y = 0; y <= 500; y+=90){
    for(int x = 0; x <= 500; x+=70){
      if(shift == true)
        scale(x+35,y);
      else
      scale(x,y);
    }
    if(shift == true)
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


void scale(int x, int y){
  beginShape();
  strokeWeight(12);
  stroke(myColor);
  line(x, y-50, x-25, y-25);
  line(x-25, y-25, x-25, y+25);
  line(x-25, y+25, x, y+50);
  line(x+25, y+25, x, y+50);
  line(x+25, y-25, x+25, y+25);
  line(x, y-50, x+25, y-25);
  //
  stroke(myColor2); //change to myColor2
  strokeWeight(10);
  line(x, y-20, x-10, y-10);
  line(x-10, y-10, x-10, y+10);
  line(x-10, y+10, x, y+20);
  line(x+10, y+10, x, y+20);
  line(x+10, y-10, x+10, y+10);
  line(x, y-20, x+10, y-10);
  endShape();
}
