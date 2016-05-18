//Class name
class Button {
  //Class Variables
  int x, y, w, h;
  boolean button;
  //Class Constructor
  Button(int tempX, int tempY, int tempW, int tempH) {
    x=tempX;
    y=tempY;
    w=tempW;
    h=tempH;
    button=false;
  }


  //Class Attributes
  void display() {
    if (mouseX>x&&mouseX<x+w&&mouseY>y&&mouseY<y+h) {
      fill(255, 0, 0);
    } else {
      fill(0);
    }
    rect(x, y, w, h);
    if (button) {
      fill(0);
      text("yes", x-20, y-20);
    } else {
      fill(0);
      text("no", x-20, y-20);
    }
  }

  //Class Behavior
  void clickButton() {
    if (mouseX>x&&mouseX<x+w&&mouseY>y&&mouseY<y+h) {
      button = !button;
    }
  }
}