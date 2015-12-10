//Stelios Bonadurer, Chris Chappell, Polina Orekhova, Andrew Weisman

final int titleScreen = 0;
final int intro1 = 1;
final int intro2 = 2;
final int intro3 = 3;
final int intro4 = 4;
final int intro5 = 5;
final int pizzaScene = 6;
final int driveScene = 7;

int sceneCount = 0;

PImage titleImage, intro1Image, intro2Image, intro3Image, intro4Image, intro5Image, intro5InstImage1, intro5InstImage2, intro5InstImage3, pizza, chair, desk, cap;

PVector head, 
  lShoulder, rShoulder, lElbow, rElbow, lHand, rHand, 
  lHip, rHip, lKnee, rKnee, lFoot, rFoot, 
  tTorso, lTorso, rTorso;

boolean didRunIntro1Setup = false;        
boolean didRunIntro2Setup = false;
boolean didRunIntro3Setup = false;  
boolean didRunIntro4Setup = false;  
boolean didRunIntro5Setup = false;  
boolean didRunDriveSetup = false;
boolean didRunPizzaSetup = false;


PFont font1;
String intro1Text, intro2Text, intro4Text, intro5Text1, intro5Text2, intro5Text3, intro5Text4;


float waveR, headR, lUpperR, lLowerR, rUpperR, rLowerR, headShakeR, pizzaDrop;
boolean waveLeft = false;
boolean headLeft = false;
boolean headShakeLeft = false;

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
    
  case intro5:
    sceneCount++;
    break;
    
  case pizzaScene:
    mouseClickedForPizza();
    break;
    
  case driveScene:
    break;
    
  }
}