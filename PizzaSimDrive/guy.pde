void drawGuy() {

  fill(255);
  noStroke();
  pushMatrix();
  translate(0, sittingOffset);
  pushMatrix();
  translate(head.x, head.y + 50);
  rotate(headR);
  translate(-head.x, -head.y + 50); 

  ellipse(head.x, head.y, 95, 95); //head
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

  strokeWeight(37);
  line(lHip.x, lHip.y, lKnee.x, lKnee.y); //left upper leg
  line(lKnee.x, lKnee.y, lFoot.x, lFoot.y); //left lower leg
  line(rHip.x, rHip.y, rKnee.x, rKnee.y); //right upper leg
  line(rKnee.x, rKnee.y, rFoot.x, rFoot.y); //right lower leg
}