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