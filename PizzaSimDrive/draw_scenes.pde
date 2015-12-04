void drawTitleScreen() {
    image(titleImage, 0, 0);
}

void drawIntro1() {
    image(intro1Image, 0, 0);
    fill(0, 128);
    noStroke();
    rect(50, 50, 800, 500, 25);
    
    textAlign(RIGHT);
    textSize(40);
    fill(200);
    text(intro1Text, 200, 100, 625, 525);
    
    
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
    
    textAlign(RIGHT);
    textSize(38);
    fill(200);
    text(intro2Text, 50, 75, 765, 475);
    
    if(sittingOffset <= 150) {
        sittingOffset += 2;
        lHip.y += 2;
        rHip.y += 2;
    }
    
    if(lUpperR < PI/6) {
        lUpperR += 0.007;  
    }
    
    if(lLowerR < 2.5) {
        lLowerR += 0.035;  
    }
    
    if(rUpperR < PI/6) {
      rUpperR += 0.007;
    }
        
    if (waveR > -1.5) {
      waveR -= 0.01; 
    } 
 
    if(headR < PI) {
        headR += 0.001;
    } else {
        headR -= 0.001;
    }
    
    drawGuy();
}

void drawIntro3() {
}

void drawIntro4() {
    image(intro4Image, 0, 0);
    fill(0, 128);
    noStroke();
    rect(50, 50, 800, 500, 25);
    
    textAlign(RIGHT);
    textSize(38);
    fill(200);
    text(intro4Text, 50, 75, 765, 475);
    
    drawGuy();
    
    if(pizzaDrop < 450) {
        pizzaDrop += 4;
    } 
    image(pizza, 130, -200 + pizzaDrop);
}