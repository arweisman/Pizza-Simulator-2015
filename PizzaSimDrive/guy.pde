void drawGuy() {

  fill(255);
  noStroke();
  pushMatrix();
  if (sceneCount == intro4) {
    translate(-30, 20);
  }
  translate(0, sittingOffset);
  pushMatrix();
  translate(head.x, head.y + 50);
  rotate(headR);
  translate(-head.x, -head.y + 50); 

  ellipse(head.x, head.y, 95, 95); //head

  switch(sceneCount) {
  case intro1:
    fill(0);
    ellipse(head.x - 23, head.y, 15, 15); //right eye (why?)
    ellipse(head.x + 23, head.y, 15, 15); //left eye
    strokeWeight(4);
    stroke(0);
    noFill();
    arc(head.x - 23, head.y - 20, 50, 80, 4*PI/10, 6*PI/10);
    arc(head.x + 23, head.y - 20, 50, 80, 4*PI/10, 6*PI/10);
    fill(0);
    noStroke();
    arc(head.x, head.y - 18, 30, 25, PI, 2*PI);
    break;

  case intro2:
    pushMatrix();
    translate(0, -sittingOffset/10);
    translate(head.x, head.y + 40 - sittingOffset/10);
    rotate(headShakeR);
    translate(-head.x, -(head.y + 40 - sittingOffset/10));
    fill(0);
    ellipse(head.x - 23, head.y, 15, 15); //right eye (why?)
    ellipse(head.x + 23, head.y, 15, 15); //left eye
    strokeWeight(4);
    stroke(0);
    noFill();
    arc(head.x - 23, head.y + 55, 50, 80, 14*PI/10, 16*PI/10);
    arc(head.x + 23, head.y + 55, 50, 80, 14*PI/10, 16*PI/10);
    fill(0);
    noStroke();
    arc(head.x, head.y - 25, 30, 25, 0, PI);
    popMatrix();
    break;

  case intro4:
    pushMatrix();
    //translate(0, -sittingOffset/10);
    translate(head.x, head.y + 40 - sittingOffset/10);
    rotate(headShakeR);
    translate(-head.x, -(head.y + 40 - sittingOffset/10));
    fill(0);
    ellipse(head.x - 23, head.y, 15, 15); //right eye (why?)
    ellipse(head.x + 23, head.y, 15, 15); //left eye
    strokeWeight(4);
    stroke(0);
    noFill();
    arc(head.x - 23, head.y + 55, 50, 80, 14*PI/10, 16*PI/10);
    arc(head.x + 23, head.y + 55, 50, 80, 14*PI/10, 16*PI/10);
    fill(0);
    noStroke();
    arc(head.x, head.y - 18, 30, 25, PI, 2*PI);
    popMatrix();
    break;
  }         

  popMatrix();

  stroke(255);
  strokeWeight(48);
  line(tTorso.x, tTorso.y, lTorso.x, lTorso.y); //left side torso
  line(tTorso.x, tTorso.y, rTorso.x, rTorso.y); //right side torso


  strokeWeight(32);
  pushMatrix();
  translate(lShoulder.x, lShoulder.y);
  rotate(lUpperR);
  translate(-lShoulder.x, -lShoulder.y);
  line(lShoulder.x, lShoulder.y, lElbow.x, lElbow.y); //left upper arm

  pushMatrix();
  translate(lElbow.x, lElbow.y);
  rotate(-lLowerR);
  translate(-lElbow.x, -lElbow.y);
  line(lElbow.x, lElbow.y, lHand.x, lHand.y); //left lower arm
  popMatrix();

  popMatrix();

  pushMatrix();
  translate(rShoulder.x, rShoulder.y);
  rotate(rUpperR);
  translate(-rShoulder.x, -rShoulder.y);
  line(rShoulder.x, rShoulder.y, rElbow.x, rElbow.y); //right upper arm

  pushMatrix();
  translate(rElbow.x, rElbow.y);
  rotate(waveR);
  translate(-rElbow.x, -rElbow.y); 

  line(rElbow.x, rElbow.y, rHand.x, rHand.y); //right lower arm
  popMatrix();
  popMatrix();





  popMatrix();

  pushMatrix();
  if (sceneCount == intro4) {
    translate(-30, 20);
  }
  strokeWeight(37);
  line(lHip.x, lHip.y, lKnee.x - sittingOffset/6, lKnee.y + sittingOffset/7); //left upper leg
  line(lKnee.x- sittingOffset/6, lKnee.y+ sittingOffset/7, lFoot.x, lFoot.y); //left lower leg
  line(rHip.x, rHip.y, rKnee.x + sittingOffset/6, rKnee.y + sittingOffset/7); //right upper leg
  line(rKnee.x + sittingOffset/6, rKnee.y + sittingOffset/7, rFoot.x, rFoot.y); //right lower leg
  popMatrix();
}