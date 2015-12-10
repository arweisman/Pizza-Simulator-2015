//PImage city;
PImage city[];
PImage tree[];
PImage collisionMap;

int grid; //num to simplify translations between graph paper and screen
//car
Car myCar;
//delivery locations array  X,Y,z: 1 = store, 2 = current delivery location, 3 = other
ArrayList<PVector> delLoc;
ArrayList deliveryLocations;
//boolean to store if the shop should be displayed(depending
//on if driver still must return
boolean dispShop;
//variable to store oscillating circle radius ** sRad is the acceleration variable
float rad, sRad;

//key presses to store if key is held
boolean w, a, s, d;

float money = 0;
int deliveriesToDo;
void setup() { //setup for titleScreen
  size(900, 600);
  background(255);

  titleImage = loadImage("titleScreen.png");
  image(titleImage, 0, 0);
}
void setupDrive()
{
  //city = loadImage("StitchedCity.png");
  //city.resize(width,height);
  city = new PImage[4];
  city[0] = loadImage("topLeft.jpg");
  city[1] = loadImage("topRight.jpg");
  city[2] = loadImage("bottomLeft.jpg");
  city[3] = loadImage("bottomRight.jpg");
  tree = new PImage[4];
  tree[0] = loadImage("treeTopLeft.png");
  tree[1] = loadImage("treeTopRight.png");
  tree[2] = loadImage("treeBottomLeft.png");
  tree[3] = loadImage("treeBottomRight.png");
  grid = 50;
  collisionMap = loadImage("collisionMap.jpg");

  //car
  myCar = new Car(new PVector(494,232), PI, color(200, 0, 30));
  setupDelLoc();
  dispShop = false;
  deliveriesToDo = 5;
}
void drawDrive() {
  //image(city, 0, 0);
  PVector c = myCar.getLoc();
  if (c.x <= 800  && c.y <= 533)
  {
    image(city[0], 0, 0);
  } else if (c.x >= 800 && c.y <= 533)
  {
    image(city[1], 0, 0);
  } else if (c.x < 800 && c.y > 533)
  {
    image(city[2], 0, 0);
  } else
  {
    image(city[3], 0, 0);
  }
  myCar.draw();
  if (c.x <= 800  && c.y <= 533)
  {
    image(tree[0], 0, 0);
  } else if (c.x >= 800 && c.y <= 533)
  {
    image(tree[1], 0, 0);
  } else if (c.x < 800 && c.y > 533)
  {
    image(tree[2], 0, 0);
  } else
  {
    image(tree[3], 0, 0);
  }
  myCar.updatemyCar();
  drawDelLoc();
  checkLoc();
}
//Method to check if car is at delivery location,off screen, or buildings
void checkLoc()
{
  PVector car = myCar.getLoc();
  for (int i = 0; i < delLoc.size(); i++)
  {
    PVector p = delLoc.get(i);
    //check if car is at delivery location
    if ((dist(car.x, car.y, p.x, p.y) < 20) && p.z == 2 && myCar.getVel() == 0)
    {
      println("PIZZA DELIVERED SUCCESSFULLY");
      deliveriesToDo --;
    }
    
  }
  //tell user to return to screen area
  if (car.x > 1600 || car.x < 0 || car.y > 1066 || car.y < 0) {
    fill(50);
    rectMode(CORNERS);
    rect(width/4, height/4, 3*width/4, 3*height/4);
    fill(255);
    text("Return to delivery area!", width*.45, height/2);
  }
  //check collisions
  println(collisionMap.get((int) car.x, (int) car.y));
  if (collisionMap.get((int)car.x, (int)car.y) != -1)
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