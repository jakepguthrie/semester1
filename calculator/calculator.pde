CalcButton[] numButtons= new CalcButton[10]; //<>//
CalcButton[] opButtons=new CalcButton[11];
CalcButton[] spButtons=new CalcButton[0];
String displayVal="0";
String valToCompute="";
String valToCompute2="";
float valToComputeI=0;
float valToComputeII=0;
float result=0;
char opVal;
boolean firstNum;
color b1, b2;
int Yaxis=1;
int Xaxis=2;





void setup() {
  size(600, 300);
  //background(255);




  frameRate(60);
  //noFill();
  //strokeWeight(3);
  //stroke(200);
  //rect(1, 1, 597, 597);
  strokeWeight(5);
  numButtons[0]=new CalcButton(145, 235).asNumber(0, 55, 55);
  numButtons[1]=new CalcButton(95, 55).asNumber(1, 55, 55);
  numButtons[2]=new CalcButton(145, 55).asNumber(2, 55, 55);
  numButtons[3]=new CalcButton(200, 55).asNumber(3, 55, 55);
  numButtons[4]=new CalcButton(95, 115).asNumber(4, 55, 55);
  numButtons[5]=new CalcButton(145, 115).asNumber(5, 55, 55);
  numButtons[6]=new CalcButton(200, 115).asNumber(6, 55, 55);
  numButtons[7]=new CalcButton(95, 175).asNumber(7, 55, 55);
  numButtons[8]=new CalcButton(145, 175).asNumber(8, 55, 55);
  numButtons[9]=new CalcButton(200, 175).asNumber(9, 55, 55);
  opButtons[0]=new CalcButton(30, 55).asOperator("+");
  opButtons[1]=new CalcButton(30, 115).asOperator("-");
  opButtons[2]=new CalcButton(30, 175).asOperator("*");
  opButtons[3]=new CalcButton(30, 235).asOperator("/");
  opButtons[4]=new CalcButton(210, 235).asOperator("=");
  opButtons[5]=new CalcButton(265, 235).asOperator("c");
  opButtons[6]=new CalcButton(265, 55).asOperator("±");
  opButtons[7]=new CalcButton(265, 175).asOperator("%");
  opButtons[8]=new CalcButton(265, 115).asOperator("^2");
  opButtons[9]=new CalcButton(325,55).asOperator("√");
  opButtons[10]=new CalcButton(325,115).asOperator("π");
  //opButtons[8]=new CalcButton(315,235).asOperator(".");
  //spButtons[0]=new CalcButton(315,235).asSpecial(".");
  firstNum=true;



  b1=color(#02CE0A);
  b2=color(#B7FFBA);
}

void draw() {
  setGradient(0, 0, width/2, height, b1, b2, Xaxis);
  setGradient(width/2, 0, width/2, height, b2, b1, Xaxis);


  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].clickButton();
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].clickButton();
  }
  for (int i=0; i<spButtons.length; i++) {
    CalcButton ispButton =spButtons[i];
    ispButton.display();
    ispButton.clickButton();
  }
  updateDisplay();
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    CalcButton inumButton=numButtons[i];
    inumButton.clickButton();
    if (inumButton.overBox) {
      if (firstNum) {
        println(i+""+inumButton.numButtonVal);
        valToCompute += int(inumButton.numButtonVal);
        displayVal=valToCompute;
      } else {
        valToCompute2 += int(inumButton.numButtonVal);
        displayVal = valToCompute2;
      }
    }
  }
  for (int i=0; i<opButtons.length; i++) {
    CalcButton iOpButton = opButtons[i];
    iOpButton.clickButton();
    if (iOpButton.overBox) {
      if (iOpButton.opButtonVal == "+") {
        if (result !=0) {
          opVal='+';
          valToCompute2="";
          firstNum=false;
          displayVal="+";
        } else {
          opVal='+';
          firstNum=false;
          displayVal="+";
        }
      }
      if (iOpButton.opButtonVal == "-") {
        if (result !=0) {
          opVal='-';
          valToCompute2="";
          firstNum=false;
          displayVal="-";
        } else {
          opVal='-';
          firstNum=false;
          displayVal="-";
        }
      }
      if (iOpButton.opButtonVal == "*") {
        if (result !=0) {
          opVal='*';
          valToCompute2="";
          firstNum=false;
          displayVal="*";
        } else {
          opVal='*';
          firstNum=false;
          displayVal="*";
        }
      }

      if (iOpButton.opButtonVal == "/") {
        if (result !=0) {
          opVal='/';
          valToCompute2="";
          firstNum=false;
          displayVal="/";
        } else {
          opVal='/';
          firstNum=false;
          displayVal="/";
        }
      }
      if (iOpButton.opButtonVal == "=") {
        firstNum=true;
        preformClac();
      }
      if (iOpButton.opButtonVal =="c") {
        displayVal = "0";
        opVal = 'c';
        valToCompute = "";
        valToCompute2 = "";
        valToComputeII = 0;
        valToComputeI = 0;
        result = 0;
        firstNum = true;
      }
      if (iOpButton.opButtonVal == "±") {
        opVal='n';
        preformClac();
      }
      if (iOpButton.opButtonVal == "%") {
        opVal = '%';
        preformClac();
      }
      if (iOpButton.opButtonVal == ".") {
        opVal='.';
        preformClac();
      }
      if (iOpButton.opButtonVal == "^2") {
        opVal='s';
        preformClac();
      }
      if (iOpButton.opButtonVal == "√"){
        opVal='r';
        preformClac();
       }
      if (iOpButton.opButtonVal == "π"){
        opVal='p';
        preformClac();
      }
    }
  }
  /*for (int i=0; i<spButtons.length; i++){
   CalcButton iSpButton = spButtons[i];
   iSpButton.clickButton();
   if (iSpButton.spButtonVal == "."){
   if (firstNum == true){
   valToCompute += iSpButton.spButtonVal;
   displayVal = valToCompute;
   }
   else if(firstNum == false){
   valToCompute2 += iSpButton.spButtonVal;
   displayVal = valToCompute2;
   }
   }
   }*/
}
void preformClac() {
  valToComputeI= float(valToCompute);
  valToComputeII=float(valToCompute2);
  if (opVal == '+') {
    result = valToComputeI+valToComputeII;
    displayVal = str(result);
  } else if (opVal == '-') {
    result = valToComputeI-valToComputeII;
    displayVal=str(result);
  } else if (opVal == '*') {
    result = valToComputeI*valToComputeII;
    displayVal=str(result);
  } else if (opVal == '/') {
    result = valToComputeI/valToComputeII;
    displayVal=str(result);
  } else if (opVal == 'n') {
    if (firstNum) {
      valToComputeI = valToComputeI*-1;
      displayVal = str(valToComputeI);
    } else {
      valToComputeII = valToComputeII*-1;
      displayVal = str(valToComputeI);
    }
  } else if (opVal == '%') {
    if (firstNum) {
      valToComputeI = valToComputeI/100;
      displayVal =str(valToComputeI);
    } else {
      valToComputeII = valToComputeII/100;
      displayVal = str(valToComputeII);
    }
  } else if (opVal == '.') {
    if (firstNum) {
      displayVal = str('.'+valToComputeI);
    }
  } else if (opVal == 's') {
    if (firstNum) {
      valToComputeI = valToComputeI * valToComputeI;
      displayVal= str(valToComputeI);
    } else {
      valToComputeII = valToComputeII*valToComputeII;
      displayVal= str(valToComputeII);
    }
  }
  else if (opVal == 'r'){
    if (firstNum){
      valToComputeI= sqrt(valToComputeI);
      displayVal=str(valToComputeI);
    }
    else{
      valToComputeII = sqrt(valToComputeII);
      displayVal = str(valToComputeII);
    }
  }
  else if (opVal == 'p'){
    if (firstNum){
      valToComputeI = PI;
      displayVal = str(valToComputeI);
    }
    else{
      valToComputeII = PI;
      displayVal = str(valToComputeII);
    }
  }
  if (firstNum) {
    valToCompute=displayVal;
  } else {
    valToCompute=displayVal;
    valToCompute2="";
  }
}

void updateDisplay() {
  fill(200, 200, 150);
  rect(10, 10, 310, 35, 7);
  fill(0);
  textSize(25);
  text(displayVal, 20, 37);
} 


void setGradient(int x, int y, float w, float h, color b1, color b2, int axis) {
  noFill();
  if (axis == Yaxis) {
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color b=lerpColor(b1, b2, inter);
      stroke(b);
      line(x, i, x+w, i);
    }
  } else if (axis == Xaxis) {
    for (int i=x; i <= x+w; i++) {
      float inter=map(i, x, x+w, 0, 1);
      color b = lerpColor(b1, b2, inter);
      stroke(b);
      line(i, y, i, y+h);
    }
  }
}