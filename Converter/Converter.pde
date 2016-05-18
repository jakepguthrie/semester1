void settings(){
size(500,500);
}
void setup(){
  fill(0);
textSize(13);
text("Conversion||Jake Guthrie", 170,50);
text("1. Farenight to Celsius",50,80);

}

void draw(){
  background(255);
  fill(0);
line(0,200,width,200);
ellipse(mouseX,200,3,3);
//tempC(mouseX);
text("f="+ mouseX + " c=" + tempC(mouseX),20,20);
}


float tempC(float f){
float c = f - 32.0 * (5.0/9.0);
  return c;

}
//float usd(float u){

//}