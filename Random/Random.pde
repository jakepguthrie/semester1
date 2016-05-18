void setup(){
size(900,900);
frameRate(60);
background(random(25,200),random(25,200),random(25,200));
}
void draw(){
  fill(random(500),random(500),random(500));
ellipse(mouseX,mouseY,50,50);
ellipse(mouseY,mouseX,50,50);

}
