//Collision detection
//Jake Guthrie

int xspeed, yspeed;
int xpos, ypos, wdth, ht;

void setup()
{
  size(1000,1000);
 background(111,111,111);
xspeed = 2;
yspeed = 5;
wdth = 10;
ht = 10;
noStroke();
xpos = width/2;
ypos = height/2;
frameRate(60);
}
void draw(){
//background(111,111,111);
fill(0,120,10);
ellipse(xpos, ypos, wdth, ht);
fill(150,0,150);
ellipse(xpos*9/10, ypos, wdth, ht);
xpos += xspeed;
ypos += yspeed;
if (xpos >= width-wdth/2 || xpos <= wdth/2){
xspeed *= -1;
}
if (ypos >= width-wdth/2 || ypos <= ht/2){
  yspeed = yspeed * -1;
}
}

