//PImage city;
PImage city[];
PImage tree[];
PImage collisionMap;
PImage logo;

int grid; //num to simplify translations between graph paper and screen
//car
Car myCar;
int currentScreen=1;
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
float carHP = 100;
int deliveriesToDo;
boolean done = false;
//delivery time in seconds
float deliveryTime = 0;
//frame count at time of crash(to display warning temporarily)
float crashFC;
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
  logo = loadImage("woodstockslogo.jpg");
  logo.resize((int)(80*.9), (int)(64*.9));

  //car
  myCar = new Car(new PVector(494, 232), PI, color(200, 0, 30));
  setupDelLoc();
  dispShop = false;
  deliveriesToDo = 5;
}
void drawDrive() {
  updateScreen();
  if (!done) {
    deliveryTime += 1;
  }

  PVector c = myCar.getLoc();
  if (currentScreen == 1)
  {
    image(city[0], 0, 0);
  } else if (currentScreen == 2)
  {
    image(city[1], 0, 0);
  } else if (currentScreen ==3)
  {
    image(city[2], 0, 0);
  } else
  {
    image(city[3], 0, 0);
  }
  myCar.draw();
  //draw bounding box for delivery region
  stroke(200, 1, 0);
  noFill();
  strokeWeight(7);
  rectMode(CORNERS);

  if (currentScreen == 1)
  {
    image(tree[0], 0, 0);
    rect(0, 0, width+100, height+100);
    image(logo, 490, 155);
  } else if (currentScreen == 2)
  {
    rect(-100, 0, width, height+100);
    image(tree[1], 0, 0);
  } else if (currentScreen == 3)
  {
    rect(0, -100, width+100, height);
    image(tree[2], 0, 0);
  } else
  {
    rect(-100, height, width, -100);
    image(tree[3], 0, 0);
  }

  myCar.updatemyCar();
  drawDelLoc();
  checkLoc();

  fill(50, 50, 50, 150);
  rectMode(CORNERS);
  noStroke();
  rect(0, height, width, height-25);
  fill(255);
  textAlign(LEFT);
  text("Deliveries Left: "+deliveriesToDo, 50, height-8);
  text("Time Elapsed: "+floor(deliveryTime/60)+":"+(int)(deliveryTime%60), 200, height-8);
  text("CAR HP: "+((int)carHP), width-370, height-8);
  textAlign(RIGHT);
  text("$"+money, width-50, height-8);
}
//Method to check if car is at delivery location,off screen, or buildings
void checkLoc()
{
  PVector car = myCar.getLoc();
  //check if car is at delivery location and speed is less
  for (int i = 0; i < deliveryLocations.size(); i++)
  {
    PVector p = delLoc.get((int)deliveryLocations.get(i));
    if (dist(p.x, p.y, car.x, car.y) < 15 && myCar.getVel() < 1)
    {
      println("PIZZA DELIVERED SUCCESSFULLY");
      deliveriesToDo --;
      deliveryLocations.remove(i);
      //add $7 per delivery plus tip with inverse correlation to time
      money += (7 + (floor(100*map(deliveryTime, 0, 10800, 10, 0))/100));
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
  //println(collisionMap.get((int) car.x, (int) car.y));
  if (collisionMap.get((int)car.x, (int)car.y) != -1)
  {
    println("YOU CRASHED");
    //myCar.crash();

    crashFC = frameCount;
    myCar.rev();
    carHP -= 25;
  }
  if (crashFC > frameCount - (60*5)) {
    rectMode(CORNERS);
    noStroke();
    fill(50, 50, 50, 100);
    rect(width/4, height/4, 3*width/4, 3*height/4);
    fill(255);
    text("YOU CRASHED!\n HP LOST: 25", width*.45, height/2);
  }
  if (carHP <= 0)
  {
    done = true;
    fill(50, 50, 50, 200);
    noStroke();
    rect(100, 100, width-100, height-100);
    fill(255);
    textAlign(CENTER);
    text("WHOOPS YOUR CAR BROKE\nYOU HAVE EARNED: $"+money+"\nIN A TIME OF: "+floor(deliveryTime/60)+":"+(int)(deliveryTime%60), width/2, (height/2)-75);
  }
}
void updateScreen()
{
  PVector c = myCar.getLoc();
  if (c.x <= 800  && c.y <= 533)
  {
    currentScreen = 1;
  } else if (c.x >= 800 && c.y <= 533)
  {
    currentScreen = 2;
  } else if (c.x < 800 && c.y > 533)
  {
    currentScreen = 3;
  } else
  {
    currentScreen = 4;
  }
}

void drawFinal()
{
  done = true;
  fill(50, 50, 50, 200);
  noStroke();
  rect(100, 100, width-100, height-100);
  fill(255);
  textAlign(CENTER);
  text("CONGRADULATIONS YOU HAVE COMPLETED YOUR SHIFT\nYOU HAVE EARNED: $"+money+"\nIN A TIME OF"+floor(deliveryTime/60)+":"+(int)(deliveryTime%60), width/2, (height/2)-75);
}