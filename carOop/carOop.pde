Car[] car;
//Car myCar;
//Car myCar1;
int numCars = 100;
void setup() {
  size(500, 500);
  //myCar=new Car(color(random(255),random(255),random(255)),100,random(500),random(10));
  //myCar1=new Car(color(random(255),random(255),random(255)),100,random(500),random(-5));
  car= new Car[numCars];
  for (int i = 0; i < car.length; i++) {
    car[i]=new Car(color(random(255),random(255),random(255)),250,random(500),random(-10,10),random(0));
  }
}
void draw() {
  background(255);
  for (int i = 0; i < car.length; i++) {
    car[i].display();
    car[i].drive();
  }
 // myCar.drive();
//  myCar.display();
//  myCar1.drive();
//  myCar1.display();

}