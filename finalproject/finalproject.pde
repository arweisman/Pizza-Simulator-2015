//pizza toppings, pizza simulator 2015, Polina Orekhovaint px, py;
int pepx, pepy, pinex, piney, onix, oniy, mushx, mushy, greenx, greeny, olivex, olivey;
float onionran= random(-15, 15); 
void setup() {
  size(900, 600);
  background(100, 190, 200);
  noLoop();
}

void draw() {
  noStroke();
  fill(221, 177, 76);
  ellipse(450, 300, 500, 500);
  fill(248, 231, 85);
  ellipse(450, 300, 450, 450);
  pepperoni(220, 220);
  pineapple(250, 250);
  onion(300, 300);
  olive(400, 400);
  greenpepper(500, 500);
  mushroom(400, 350);
}
// mushrooms

//make methods for each topping type
//when topping is clicked on, pick up, move cursor, when released, have toppings put on
//(random) or tx ty is mousex mouseY

//pepperoni
void pepperoni(int pepx, int pepy) {
  fill(200, 0, 0);
  ellipse(pepx, pepy, 60, 60);
}
//pineapple
void pineapple(int pinex, int piney) {
  fill(255, 255, 0);
  quad(pinex-15, piney-10, pinex+10, piney-5, pinex+3, piney+10, pinex-4, piney+7);
}
//onions
void onion(int onix, int oniy) {
  noFill();
  strokeWeight(7);
  stroke(214, 108, 191);
  ellipse(onix, oniy, 65, 65);
  stroke(255);
  strokeWeight(5);
  ellipse(onix, oniy, 55, 55);
}
//olives
void olive(int olivex, int olivey) {
  strokeWeight(10);
  stroke(0);
  ellipse(olivex, olivey, 25, 25);
}
//green peppers
void greenpepper(int greenx, int greeny) {
  stroke(18, 191, 4);
  strokeWeight(10);
  arc(greenx, greeny, 30, 40, 0, PI);
  pushMatrix();
  translate(greenx-10, greeny-12);
  rotate(2*PI/3);
  arc(0, 0, 30, 40, 0, PI);
  popMatrix();
  pushMatrix();
  translate(greenx+8, greeny-12);
  rotate(4*PI/3);
  arc(0, 0, 30, 40, 0, PI);
  popMatrix();
}

//mushroom
void mushroom(int mushx, int mushy) {
  pushMatrix();
  translate(mushx,mushy);
  rotate(random(0, 2*PI));
  translate(-mushx, -mushy);
  noStroke();
  fill(255, 242, 165);
  ellipse(mushx, mushy, 60, 30);
  fill(75, 61, 36);
  ellipse(mushx, mushy+7.5, 40, 15);
  strokeCap(ROUND);
  strokeWeight(15);
  stroke(255, 242, 165);
  line(mushx, mushy, mushx, mushy+20);
  popMatrix();
}