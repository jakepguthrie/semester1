Lines[] myLines=new Lines [15];



void setup() {
  background(255);
  size(displayWidth,displayHeight);
  frameRate(100);
  for (int i=0; i<myLines.length; i++) {
    myLines[i]=new Lines(mouseX, mouseY, random(1, 5), random(1));
  }
}
void draw() {
  if (frameCount>1000){
  frameCount=0;
  background(255);
  }
  for (int i=0; i<myLines.length; i++) {
    Lines iLines = myLines[i];
    iLines.mousePressed();
  }
 if (frameCount>2000){
     exit();
 
 }
}