//PImage city;
PImage city[];

int grid; //num to simplify translations between graph paper and screen
//building array
ArrayList<PShape> buildings;
//car
Car myCar;
//delivery locations array  X,Y,z: 1 = store, 2 = current delivery location, 3 = other
ArrayList<PVector> delLoc;
//boolean to store if the shop should be displayed(depending
//on if driver still must return
boolean dispShop;
//variable to store oscillating circle radius ** sRad is the acceleration variable
float rad, sRad;

//key presses to store if key is held
boolean w, a, s, d;

float money;

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
  grid = 50;

  //car
  myCar = new Car(new PVector(6.5*grid, 4.3*grid), PI, color(200, 0, 30));
  //setupDelLoc();
  //setupBuildings();
  dispShop = false;
}
void drawDrive() {
  //image(city, 0, 0);
  PVector c = myCar.getLoc();
  if(c.x <= 800  && c.y <= 533)
  {
    image(city[0],0,0);
  }else if(c.x >= 800 && c.y <= 533)
  {
   image(city[1],0,0); 
  }else if(c.x < 800 && c.y > 533)
  {
    image(city[2],0,0);
  }else
  {
    image(city[3],0,0);
  }
  
  myCar.draw();
  myCar.updatemyCar();
  //drawDelLoc();
  //checkLoc();
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
    if (dist(car.x, car.y, delLoc.get(0).x, delLoc.get(0).y) < 20 && dispShop)
    {
      dispShop = false;
      //delLoc.get((int)random(delLoc.size())).z = 2;
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
  for (PShape b : buildings)
  {
   if (checkShape(car.x,car.y,b))
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