//separate setup methods for each scene

void setupIntro1() {
  if (!didRunIntro1Setup) {
    intro1Image = loadImage("calpolybgblur.png");
    head = new PVector(150, 153);

    lShoulder = new PVector(143, 222);
    rShoulder = new PVector(155, 222);
    lElbow = new PVector(45, 290);
    rElbow = new PVector(260, 160);
    lHand = new PVector(110, 385);
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

    font1 = createFont("ITCAvantGardeStd-Bk.otf", 46);
    textFont(font1);


    intro1Text = "Meet Billy.\nBilly was just admitted\nto Cal Poly as a Computer Science major and he's super excited for all of\nhis classes, especially\nCPE 123 with Dr. Wood!\nLet's check in with Billy now!";


    didRunIntro1Setup = true;
  }
}

void setupIntro2() {
  if (!didRunIntro2Setup) {
    intro2Image = loadImage("classroombgblur.png");  
    chair = loadImage("chairsmall.png");
    desk = loadImage("desk.png");
    lUpperR = 0;
    lLowerR = 0;
    rUpperR = 0;
    rLowerR = 0;

    headShakeR = 0;

    intro2Text = "Oh no!\nBilly has no idea what he's doing! His extremely supportive parents have told him that if he\ndoesn't get his act\ntogether, they will stop\npaying for his education!\nWhat will he do?";

    didRunIntro2Setup = true;
  }
}

void setupIntro3() {
  if (!didRunIntro3Setup) {
    intro3Image = loadImage("laterbg.png");
    image(intro3Image, 0, 0);
    didRunIntro3Setup = true;
  }
}

void setupIntro4() {
  if (!didRunIntro4Setup) {
    intro4Image = loadImage("woodstocksbgblur.png");
    cap = loadImage("baseballCap.png");
    image(intro4Image, 0, 0);

    pizza = loadImage("pizzabox.png");

    pizzaDrop = 0;
    sittingOffset = 0;
    lUpperR = 0;
    lLowerR = 0;
    rUpperR = 0;
    rLowerR = 0;

    head = new PVector(150, 155);

    lShoulder = new PVector(143, 222);
    rShoulder = new PVector(155, 222);
    lElbow = new PVector(90, 340);
    rElbow = new PVector(175, 330);
    lHand = new PVector(180, 375);
    rHand = new PVector(225, 360);

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
    headShakeR = -PI/20;
    waveR = 0;

    intro4Text = "Meet Woodstock's Pizza's\nnewest employee!\nBilly got a job at the best\npizza joint in SLO to pay\nhis way through college.\n \nBilly works in the kitchen\nand is also a delivery boy.";

    didRunIntro4Setup = true;
  }
}

void setupIntro5() {
  if (!didRunIntro5Setup) {
    intro5Image = loadImage("kitchenblur.png");
    image(intro5Image, 0, 0);
    
    intro5InstImage1 = loadImage("intro5Inst1.PNG");
    intro5InstImage2 = loadImage("intro5Inst2.PNG");
    //intro5InstImage3 = loadImage("intro5Inst3.png");
    
    intro5Text1 = "Just in case you forgot your job, Billy...";
    intro5Text2 = "First, make the pizzas.  Following the order on the receipt, click on each ingredient and then on the pizza to add it.  The topping will turn green once there is enough on the pizza.  Click the 'next' button to receive another order.";
    intro5Text3 = "Once all of the pizzas have been made, it's time to drive!  Use the WASD keys or arrow keys to drive to each customer's house (marked with a yellow circle), and then back to restaurant.";
    intro5Text4 = "Remember, you'll get bigger tips if you complete these tasks expediently!";
    
    didRunIntro5Setup = true;
  }
}

void setupDriveScene() {
  if (!didRunDriveSetup) {
    setupDrive();
    didRunDriveSetup = true;
  }
}