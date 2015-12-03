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
        didRunIntro4Setup = true;
    }
}

void setupScene5() {
    if(!didRunDriveSetup) {
        setupDrive();
        didRunDriveSetup = true;
    }
}