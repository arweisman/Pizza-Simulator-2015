void setupIntro1() {
    if(!didRunIntro1Setup) {
        intro1Image = loadImage("calpolybgblur.png");
        head = new PVector(150, 150);
    
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
        
        intro1Text = "Meet Billy.\nBilly was just admitted to\nCal Poly as a Computer Science major.  Billy is super excited for all of his classes, especially\nCPE 123 with Dr. Wood!\nLet's check in with Billy now!";

        
        didRunIntro1Setup = true;
    }
}

void setupIntro2() {
    if(!didRunIntro2Setup) {
        intro2Image = loadImage("classroombgblur.png");  
        lUpperR = 0;
        lLowerR = 0;
        rUpperR = 0;
        rLowerR = 0;
        
        intro2Text = "Oh no! Billy has no idea what he's\ndoing! His extremely supportive\nparents have told him that if he\ndoesn't get his act together,\nthey will stop paying for his\neducation! What will he do?";

        didRunIntro2Setup = true;
    }
}

void setupIntro3() {
    if(!didRunIntro3Setup) {
        intro3Image = loadImage("laterbg.png");
        image(intro3Image, 0, 0);
        didRunIntro3Setup = true;
    }
}

void setupIntro4() {
    if(!didRunIntro4Setup) {
        intro4Image = loadImage("woodstocksbgblur.png");
        image(intro4Image, 0, 0);
        
        pizza = loadImage("pizzabox.png");
        
        pizzaDrop = 0;
        sittingOffset = 0;
        lUpperR = 0;
        lLowerR = 0;
        rUpperR = 0;
        rLowerR = 0;
        
        head = new PVector(150, 150);
    
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
        waveR = 0;
        
        intro4Text = "Meet Woodstock's Pizza's newest employee! Billy got a job at the\nbest pizza joint in SLO\nto pay his way through college.\nBilly works in the kitchen\nand is also a delivery boy.";

        didRunIntro4Setup = true;
    }
}

void setupDriveScene() {
    if(!didRunDriveSetup) {
        setupDrive();
        didRunDriveSetup = true;
    }
}