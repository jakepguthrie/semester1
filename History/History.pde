void setup(){
size(900,400);
  textSize(40);
text("History of computers",230,50) ;

int value = 0;
}
void draw(){
 background(#FA00FF);
 fill(0);
 stroke(0);

  strokeWeight(3);
  line(50,200,850,200);
  textSize(40);
text("History of computers",230,50) ;


history("ENIAC","1946",100,300,70,70);
history("IBM 7090","1962",200,300,70,70);
history("PDP-8","1965",300,100,70,70);
history("VAX","1977", 400,100,70,70);
history("Intel 4004","1970",350,300,70,70);
history("Motorola 6809","1978",450,100,70,70);
history("Intel 8088","1979",500,300,70,70);
history("Pentium","1993",590,100,70,70);

println("y=" + mouseY);
println("x=" + mouseX);

}
void history(String bText, String dText,int x, int y,int w,int l){

  
  if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+l){ 
  fill(0);
  text(dText, x-20, y+30);
}
if (y<=200){
line(x,y+15,x+100,y+100);
}
if (y>=200){
line(x,y,x+100,y-100);
}
textSize(15);
text(bText,x,y+15);
}


