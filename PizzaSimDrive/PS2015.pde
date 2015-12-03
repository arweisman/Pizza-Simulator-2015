final int titleScreen = 0;
final int intro1 = 1;
final int intro2 = 2;
final int intro3 = 3;
final int intro4 = 4;
final int drive = 5;

int sceneCount = 0;

PImage titleImage, intro1Image, intro2Image, intro3Image, intro4Image;

PVector head,
        lShoulder, rShoulder, lElbow, rElbow, lHand, rHand,
        lHip, rHip, lKnee, rKnee, lFoot, rFoot,
        tTorso, lTorso, rTorso;
        
boolean didRunIntro1Setup = false;        
boolean didRunIntro2Setup = false;
boolean didRunIntro3Setup = false;  
boolean didRunIntro4Setup = false;  
boolean didRunDriveSetup = false;

        
float waveR, headR;
boolean waveLeft = false;
boolean headLeft = false;


void setup() { //setup for titleScreen
    size(900, 600);
    background(255);
        
    titleImage = loadImage("titleScreen.png");
    image(titleImage, 0, 0);
    
    head = new PVector(150, 150);
    
    lShoulder = new PVector(143, 224);
    rShoulder = new PVector(155, 220);
    lElbow = new PVector(90, 335);
    rElbow = new PVector(260, 160);
    lHand = new PVector(90, 450);
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
}

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
            
        case drive:
            setupDrive();
            
            break;
    }
}