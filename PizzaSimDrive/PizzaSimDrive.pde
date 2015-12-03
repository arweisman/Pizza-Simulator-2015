PImage city;

int grid; //num to simplify translations between graph paper and screen
//building array
Building[] buildings;
//car
Car myCar;
//delivery locations array  X,Y,z: 1 = store, 2 = current delivery location, 3 = other
PVector[] delLoc;
//boolean to store if the shop should be displayed(depending
//on if driver still must return
boolean dispShop;
//variable to store oscillating circle radius ** sRad is the acceleration variable
float rad, sRad;

//key presses to store if key is held
boolean w, a, s, d;


void setup() { //setup for titleScreen
    size(900, 600);
    background(255);
        
    titleImage = loadImage("titleScreen.png");
    image(titleImage, 0, 0);
    
    head = new PVector(150, 150);
    
    lShoulder = new PVector(143, 224);
    rShoulder = new PVector(155, 220);
    lElbow = new PVector(90, 335);
    rElbow = new PVector(260, 160);
    lHand = new PVector(90, 450);
    rHand = new PVector(310, 45);
    
    lHip = new PVector(140, 375);
    rHip = new PVector(160, 375);
    lKnee = new PVector(120, 550);
    rKnee = new PVector(180, 550);
    lFoot = new PVector(110, 650);
    rFoot = new PVector(180, 650);
    
    tTorso = new PVector(150, 230);
    lTorso = new PVector(145, 375);
    rTorso = new PVector(155, 375);
    
    headR = PI;
}
//void setup()
//{
//  size(900, 585);
//  setupDrive();
//}

//void draw()
//{
//  drawDrive();
//}
void setupDrive()
{
  city = loadImage("city.jpg");
  grid = 50;

  //car
  myCar = new Car(new PVector(6.5*grid, 4.3*grid), PI, color(200, 0, 30));
  setupDelLoc();
  setupBuildings();
  dispShop = false;
}
void drawDrive() {
  image(city, 0, 0);
  myCar.draw();
  myCar.updatemyCar();
  drawDelLoc();
  checkLoc();
}
//Method to check if car is at delivery location,off screen, or buildings
void checkLoc()
{
  PVector car = myCar.getLoc();
  for (PVector p : delLoc)
  {

    //check if car is at delivery location
    if ((dist(car.x, car.y, p.x, p.y) < 20) && p.z == 2)
    {
      println("PIZZA DELIVERED SUCCESSFULLY");
      p.z = 3;
      dispShop = true;
    }
    //check if car at shop
    if (dist(car.x, car.y, delLoc[0].x, delLoc[0].y) < 20 && dispShop)
    {
      dispShop = false;
      delLoc[(int)random(delLoc.length)].z = 2;
    }
  }
  //tell user to return to screen area
  if (car.x > width || car.x < 0 || car.y > height || car.y < 0) {
    fill(50);
    rectMode(CORNERS);
    rect(width/4, height/4, 3*width/4, 3*height/4);
    fill(255);
    text("Return to delivery area!", width*.45, height/2);
  }
  //check collisions
  for (Building b : buildings)
  {
    if (b.checkCollision((int)car.x, (int)car.y, 5))
    {
      println("YOU CRASHED");
      myCar.crash();
      fill(50);
      rectMode(CORNERS);
      rect(width/4, height/4, 3*width/4, 3*height/4);
      fill(255);
      text("YOU CRASHED!\nGAME OVER", width*.45, height/2);
    }
  }
}