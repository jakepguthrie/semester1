int x, y;

void setup() {
  size(400, 400);
  frameRate(10);
  x=0;
  y=0;
  background(255);
}

void draw() {
  //fill(255);
  //drawName();
  //noLoop();
  fill(0);
  if (keyPressed) {
    if (key == 'a'||key=='A') {
      moveLeft(1);
     fill(255);
    }
    if (key=='s'||key=='S') {
      moveDown(1);
      fill(255);
    }
      if (key=='d'||key=='D') {
      moveRight(1);
    }
    if (key=='w'||key=='W') {
      moveUp(1);
    }
  }
}
  void mouseClicked(){
  saveFrame("line-####.png");
  
  }
  //void keyPressed() {
    //if (key == CODED) {
      //if (keyCode==RIGHT) {
      //  moveRight(1);
   //   }
    //}
   // if (keyCode==LEFT) {
  //    moveLeft(1);
 //   }
  //  if (keyCode==DOWN) {
  //    moveDown(1);
  //  }
  //  if (keyCode==UP) {
   //   moveUp(1);
  /// }
 // }
  //void drawName() {
  //moveDown(5); 
  // moveRight(15);
  // moveLeft(7);
  // moveDown(30);
  // moveLeft(7);
  // moveUp(7);
  // moveRight(2);
  //moveLeft(2);
  //moveDown(7);
  //moveRight(7);
  // moveRight(10);
  // moveUp(30);
  //moveRight(7);
  //moveDown(2);
  // moveUp(2);
  //moveLeft(7);
  // moveDown(30);
  //  moveRight(10);
  // moveUp(5);
  //  moveLeft(1);
  //}

  void moveRight(int rep) {
    for (int i=0; i<rep*10; i++) {
      point(x+i, y);
    }

    x=x+(10*rep);
  }
  void moveDown(int rep) {
    for (int i=0; i<rep*10; i++) {
      point(x, y+i);
    }

    y=y+(10*rep);
  }
  void moveUp(int rep) {
    for (int i=0; i<rep*10; i++) {
      point(x, y-i);
    }
    y=y-(10*rep);
  }
  void moveLeft(int rep) {
    for (int i=0; i<rep*10; i++) {
      point(x-i, y);
    }
    x=x-(10*rep);
  }