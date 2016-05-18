class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  boolean Rwing;
  Car(color tempC, float tempXPos, float tempYPos, float tempXspeed,float tempYspeed) {
    c=tempC;
    xpos=tempXPos;
    ypos=tempYPos;
    xspeed=tempXspeed;
    yspeed=tempYspeed;

  }
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 20, 10);
    fill(255);
    if (xspeed<0) {
      rect(xpos-5, ypos, 5, 7);
    } else {
      rect(xpos+5, ypos, 5, 7);
    }
    fill(0);
    ellipse(xpos+5, ypos-5, 2, 2);
    ellipse(xpos-5, ypos-5, 2, 2);
    ellipse(xpos+5, ypos+5, 2, 2);
    ellipse(xpos-5, ypos+5, 2, 2);
    if (Rwing=true && xspeed<0){
    rect(xpos+5,ypos,2,12);
    }
    else if (Rwing=true && xspeed>0){
    rect(xpos-5,ypos,2,12);
    }
    
}
  void drive() {
    xpos=xpos+xspeed;
    ypos=ypos+yspeed;
    if (xpos>width) {
      xpos=0;
    }
    if (xpos<0) {
      xpos=500;
    }
    if (ypos>500){
    ypos=0;
    }
    if (ypos<0){
    ypos=500;
    }
  }
}