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
void setup()
{
  size(900, 585);
  setupDrive();
}

void draw()
{
  drawDrive();
}
void setupDrive()
{
  city = loadImage("city.jpg");
  grid = 50;
  //Setup grass color array
  grass = new color[140];
  for (int i = 0; i < grass.length; i++)
  {
    grass[i] = lerpColor(#1CFF00, #237600, random(1));
  }
  //road colors
  mainRdC = color(50);
  sideRdC = color(150);
  walkC = color(180);
  //buildings
  buildings = new Building[1];
  buildings[0] = new Building(new PVector(450, 270), new PVector(720, 360));
  //car
  myCar = new Car(new PVector(9*grid, 5*grid), 0, color(200, 0, 30));
  setupDelLoc();
  dispShop = false;
}
void drawDrive() {
  image(city,0,0);
  myCar.draw();
  myCar.updatemyCar();
  drawDelLoc();
  checkLoc();

}
//Method to check if car is at delivery location
void checkLoc()
{
  for(PVector p: delLoc)
  {
    PVector car = myCar.getLoc();
    //check if car is at delivery location
    if((dist(car.x,car.y,p.x,p.y) < 20) && p.z == 2)
    {
      println("PIZZA DELIVERED SUCCESSFULLY");
      p.z = 3;
      dispShop = true;
    }
    //check if car at shop
    if(dist(car.x,car.y,delLoc[0].x,delLoc[0].y) < 20 && dispShop)
    {
      dispShop = false;
      delLoc[(int)random(delLoc.length)].z = 2;
    }
  }
  
}


void mousePressed()
{
  println("delLoc[1] = new PVector("+mouseX+","+mouseY+","+3+");");
}