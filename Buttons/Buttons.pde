void setup(){
size(400,400);
background(255,255,0);


int value = 0;
}
void draw(){
 
if (mousePressed == true){
  fill(255,255,0);
} else {
  fill(0);
}
button("two",100,200,70,70);
button("Dog",100,100,70,70);
button("Cat",200,200,70,70);
button("Bird", 300,300,70,70);

}
void button(String bText,int x, int y,int w,int l){
  noStroke();
  fill(#030303);
 
rect(x,y,w,l,20);
fill(255,255,255);
rect(x-5,y+5,w,l,20);
fill(#FF0303);
text(bText,x+30,y+20);



}

