int x = 50;
int y= 50;
int w = 100;
int h = 75;
boolean button=false;
void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  stroke(0);

  if (mouseX>x&&mouseX<x+w&&mouseY>y&&mouseY<y+h) {
    fill(255,0,0);
  } else {
    fill(0);
  }
  rect(x, y, w, h);
  if (button){
    fill(0);
  text("yes",50,50);
  }
  else{
    fill(0);
  text("no",50,50);
  }
}

void mousePressed(){
if (mouseX>x&&mouseX<x+w&&mouseY>y&&mouseY<y+h){
button = !button;
}
else{
button=false;
}
}