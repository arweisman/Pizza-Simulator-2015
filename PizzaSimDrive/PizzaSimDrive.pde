//colors
color mainRdC, sideRdC; // colors for roads, main/side
color[] grass;
int grid; //num to simplify translations between graph paper and screen
//building array
Building[] buildings;
//car
Car myCar;

//key presses to store if key is held
boolean w, a, s, d;
void setup()
{
  size(900, 585);

  grid = 45;
  //Setup grass color array
  grass = new color[140];
  for (int i = 0; i < grass.length; i++)
  {
    grass[i] = lerpColor(#1CFF00, #237600, random(1));
  }
  //road colors
  mainRdC = color(50);
  sideRdC = color(150);
  //buildings
  buildings = new Building[1];
  buildings[0] = new Building(new PVector(450, 270), new PVector(720, 360), new PVector(5, 5));
  //car
  myCar = new Car(new PVector(9*grid, 5*grid), 0, color(200, 0, 30));
}

void draw()
{
  background(100);

  drawbackground();

  myCar.draw();
  updatemyCar();
}

void drawbackground()
{
  //grass
  noStroke();
  rectMode(CORNERS);
  for (int i = 10; i < 20; i+= 1)
  {
    for (int j = 1; j < 14; j+= 1)
    {
      fill(grass[(i-9)*j]);
      rect((i*grid), (grid*(j-1)), (1+i)*grid, (j)*grid);
    }
  } 
  //roads!
  fill(sideRdC);
  rectMode(CORNERS);
  //Horizontal
  rect(0, grid, width, 2*grid);
  rect(0, 8*grid, width, 9*grid);
  rect(0, 12*grid, 8*grid, height);
  rect(10*grid, 11*grid, width, 12*grid);
  //Vertical
  rect(3*grid, 0, 4*grid, height);
  rect(16*grid, 0, 17*grid, height);
  //Main Roads
  fill(mainRdC);
  rect(0, 4*grid, width, 6*grid);
  rect(8*grid, 0, 10*grid, height);
}