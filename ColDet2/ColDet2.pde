//Collision detection
//Jake Guthrie

int xspeed, yspeed;
int xpos, ypos, wdth, ht;

void setup()
{
  size(1920,1080);
 background(111,111,111);
xspeed = 6;
yspeed = 10;
wdth = 10*2;
ht = 10*2;
noStroke();
xpos = width/2;
ypos = height/2;
frameRate(90);
}
void draw(){
//background(111,111,111);
fill(0,0,0);
ellipse(xpos+2, ypos, wdth, ht);
fill(200,100,150);
ellipse(xpos, ypos, wdth, ht);
xpos += xspeed;
ypos += yspeed;
if (xpos >= width-wdth/2 || xpos <= wdth/2){
xspeed *= -1;
}
if (ypos >= width-wdth/2 || ypos <= ht/2){
  yspeed = yspeed * -1;
}
}

