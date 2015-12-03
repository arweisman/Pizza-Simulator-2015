void setupIntro1() {
    if(!didRunIntro1Setup) {
        intro1Image = loadImage("calpolybgblur.png");
        headR = PI; 
        didRunIntro1Setup = true;
    }
}

void setupIntro2() {
    if(!didRunIntro2Setup) {
        intro2Image = loadImage("classroombgblur.png");
        
        
        
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