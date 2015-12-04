final int titleScreen = 0;
final int intro1 = 1;
final int intro2 = 2;
final int intro3 = 3;
final int intro4 = 4;
final int pizzaScene = 5;
final int driveScene = 6;

int sceneCount = 0;

PImage titleImage, intro1Image, intro2Image, intro3Image, intro4Image, pizza;

PVector head, 
  lShoulder, rShoulder, lElbow, rElbow, lHand, rHand, 
  lHip, rHip, lKnee, rKnee, lFoot, rFoot, 
  tTorso, lTorso, rTorso;

boolean didRunIntro1Setup = false;        
boolean didRunIntro2Setup = false;
boolean didRunIntro3Setup = false;  
boolean didRunIntro4Setup = false;  
boolean didRunDriveSetup = false;
boolean didRunPizzaSetup = false;

String intro1Text, intro2Text, intro4Text;


float waveR, headR, lUpperR, lLowerR, rUpperR, rLowerR, pizzaDrop;
boolean waveLeft = false;
boolean headLeft = false; 

float sittingOffset = 0;


void mousePressed() {  // change the scene whenever the mouse is clicked
  switch(sceneCount) { 
  case titleScreen:
    sceneCount++;
    break;

  case intro1:
    sceneCount++;
    break;

  case intro2:
    sceneCount++;
    break;

  case intro3:
    sceneCount++;
    break;

  case intro4:
    sceneCount++;
    break;  
  case pizzaScene:
    mouseClickedForPizza();
    break;
  case driveScene:
    sceneCount = pizzaScene;
    break;
  }
}

void drawChair() {
}

void draw() {

  switch(sceneCount) {
  case titleScreen:
    drawTitleScreen();
    break;

  case intro1:
    setupIntro1();
    drawIntro1();
    break;

  case intro2:
    setupIntro2();
    drawIntro2();
    break;

  case intro3:
    setupIntro3();
    drawIntro3();
    break;

  case intro4:
    setupIntro4();
    drawIntro4();
    break;

  case pizzaScene:
    setupPizCre();
    drawPizzaCreation();
    //sceneCount = driveScene;
    break;

  case driveScene:
    setupDriveScene();
    drawDrive();
    break;
  }
}