void drawTitleScreen() {
    image(titleImage, 0, 0);
}

void drawIntro1() {
    image(intro1Image, 0, 0);
    fill(0, 128);
    noStroke();
    rect(50, 50, 800, 500, 25);
    
    if (waveR < -1.0) {
        waveLeft = true;
    } 
    if (waveR > 0.3) {
        waveLeft = false;
    }
  
    if(waveLeft) {
        waveR += 0.02;   
    } else {
        waveR -= 0.02;
    }
    
    
    if (headR < PI - PI/12) {
        headLeft = true;
    } 
    if (headR > PI + PI/32) {
        headLeft = false;
    }
    
    if(headLeft) {
        headR += 0.002;   
    } else {
        headR -= 0.002;
    }
    
    drawGuy(); 
}

void drawIntro2() {
    image(intro2Image, 0, 0);
    fill(0, 128);
    noStroke();
    rect(50, 50, 800, 500, 25);
    
    
    
    drawGuy();
}

void drawIntro3() {
}

void drawIntro4() {
    image(intro4Image, 0, 0);
    fill(0, 128);
    noStroke();
    rect(50, 50, 800, 500, 25);
    
    drawGuy();
}