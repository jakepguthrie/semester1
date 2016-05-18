class Lines {
  float xpos;
  float ypos;
  float strokeW;
  float pointCount;

  Lines(float tempX, float tempY, float tempStroke, float tempPoint) {
    xpos=tempX;
    ypos=tempY;
    strokeW=tempStroke;
    pointCount=tempPoint;
  }
  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos=startX+i;
    }
  }
  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos=startX-i;
      ;
    }
  }
  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);

      ypos = startY+i;
    }
  }
  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);

      ypos = startY-i;
    }
  }
  void moveupRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY-i);
      ypos=startY-i;
      xpos=startX+i;
    }
  }
  void moveupLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY-i);
      ypos=startY-i;
      xpos=startX-i;
    }
  }
  void movedownRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY+i);
      ypos=startY+i;
      xpos=startX+i;
    }
  }
  void movedownLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY+i);
      ypos=startY+i;
      xpos=startX-i;
    }
  }
  void display() {
  }
  void mousePressed() {
    if (mousePressed) {
      strokeWeight(random(1, 3));
      pointCount=random(1, 50);
      stroke(random(200), random(200), random(255));
      if (xpos>width||xpos<0||ypos>height||ypos<0) {
        xpos=mouseX;
        ypos=mouseY;
      } else {
        if (random(1000)>700) {
          moveLeft(xpos, ypos, pointCount);
        } else if (random(1000)>650) {
          moveUp(xpos, ypos, pointCount);
        } else if (random(1000)>550) {
          moveDown(xpos, ypos, pointCount);
        } else if (random(1000)>450) {
          moveRight(xpos, ypos, pointCount);
        } else if (random(1000)>350) {
          moveupRight(xpos, ypos, pointCount);
        } else if (random(1000)>250) {
          moveupLeft(xpos, ypos, pointCount);
        } else if (random(1000)>150) {
          movedownRight(xpos, ypos, pointCount);
        } else {
          movedownLeft(xpos, ypos, pointCount);
        }
      }
    }
  }
}