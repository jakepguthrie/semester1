class CalcButton {
  boolean isNumber;
  boolean isSpecial;
  boolean isOperator;
  float numButtonVal;
  String opButtonVal;
  String spButtonVal;
  float xpos;
  float ypos;
  int boxSize=55;
  int buttonW=55;
  int buttonH=55;
  boolean overBox=false;
  color c1=color(#FF0015), c2=color(#FC8C96);
  CalcButton(float tempXpos, float tempYpos) {
    xpos=tempXpos;
    ypos=tempYpos;
    //println(numButtonVal);
  }

  CalcButton asNumber(float tempNumButtonVal, int tempW, int tempH) {
    isNumber=true;
    numButtonVal=tempNumButtonVal;
    buttonW=tempW;
    buttonH=tempH;
    return this;
  }

  CalcButton asOperator(String tempOpButtonVal) {
    isOperator=true;
    opButtonVal=tempOpButtonVal;
    return this;
  }

  CalcButton asSpecial(String buttonVal) {
    isSpecial=true;
    spButtonVal=buttonVal;
    return this;
  }


  void display() {
    if (isNumber) {
      fill(177);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 20);
      fill(122, 44, 22);
      setGradientButton(xpos, ypos, buttonW, buttonH, c1, c2, Yaxis);
      if (overBox) {
        c1=#FF03FB;
        c2=#FFCBFD;
      } else {
        c1=#FF0015;
        c2=#FC8C96;
      }
      textSize(24);
      text(int(numButtonVal), xpos+19, ypos+40);
    } else if (isOperator) {
      fill(177);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 20);
      fill(122, 44, 22);
      setGradientButton(xpos, ypos, buttonW, buttonH, c1, c2, Yaxis);
      if (overBox) {
        c1=#0024FF;
        c2=#8B9BFF;
      } else {
        c1=#FF0015;
        c2=#FC8C96;
      }
      textSize(24);
      text(opButtonVal, xpos+19, ypos+40);
    } else if (isSpecial) {
      fill(177);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 20);
      fill(122, 44, 22);
      setGradientButton(xpos, ypos, buttonW, buttonH, c1, c2, Yaxis);
      textSize(24);
      text(spButtonVal, xpos+27, ypos+27);
      if (overBox) {
        c1=#FFE600;
        c2=#FFF493;
      } else {
        c1=#FF0015;
        c2=#FC8C96;
      }
    }
  }

  void clickButton() {
    overBox = mouseX>xpos && mouseX<xpos+boxSize && mouseY>ypos && mouseY<ypos+boxSize;
  }
}
void setGradientButton(float x, float y, float w, float h, color c1, color c2, int axis) {

  noFill();
  if (axis == Yaxis) {
    for (float i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c=lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  } else if (axis == Xaxis) {
    for (float i=x; i <= x+w; i++) {
      float inter=map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}