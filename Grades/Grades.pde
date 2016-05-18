void setup() {
  size(600, 600);
}





void draw() {
  background(0);
  strokeWeight(2);
  stroke(255);
  line(0,300,width,300);
  strokeWeight(5);
  fill(255,0,0);
  point(mouseX,300);
  display(mouseX/6);
}



void display(float grade) {

  if (grade >= 94) {
    text("assign letter grade A" + grade,50,50);
  } else if (grade >= 89 && grade <= 93) {
    text("assign letter grade A-"+ grade,50,50);
  } else if (grade >=87 && grade <= 88) {
    text("assign letter grade B+" + grade,50,50);
  } else if (grade >= 83 && grade <= 86) {
    text("assign letter grade B"+ grade,50,50);
  } else if (grade >=80 && grade <= 82) {
    text("assign letter grade B-" + grade,50,50);
  } else if (grade >= 77 && grade <= 79) {
    text("assign letter grade C+" + grade,50,50);
  } else if (grade >= 73 && grade <= 76) {
    text("assign letter grade C" + grade,50,50);
  } else if (grade >= 70 && grade <= 72) {
    text("assign letter grade C-"+ grade,50,50);
  } else if (grade >= 67 && grade <= 69) {
    text("assign letter grade D+"+ grade,50,50);
  } else if (grade >= 63 && grade <= 66) {
    text("assign letter grade D"+ grade,50,50);
  } else if (grade >= 60 && grade <= 62) {
    text("assign letter grade D-"+ grade,50,50);
  } else if (grade <= 60) {
    text("assign letter grade F"+ grade,50,50);
  }
}

