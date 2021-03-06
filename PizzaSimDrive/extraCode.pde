PVector calculateMoveDistance(PVector initialPos, PVector finalPos, float frameDuration) {
  float xDiff = (finalPos.x - initialPos.x)/frameDuration;
  float yDiff = (finalPos.y - initialPos.y)/frameDuration;
  PVector output = new PVector(xDiff, yDiff);
  return(output);
}
//Check the Collision Method: (with mouse)
//void checkCollisionMethod()
//{
//  //if (buildings[0].checkCollision(mouseX, mouseY, 50)) {
//  //  println("COLLIDE!");
//  //} else {
//  //  println("NOT COLLIDE!");
//  //}
//  //fill(255, 0, 0, 50);
//  //ellipse(mouseX, mouseY, 100, 100);
//}

//void drawbackground()
//{
//  //grass
//  noStroke();
//  rectMode(CORNERS);
//  for (int i = 10; i < 20; i+= 1)
//  {
//    for (int j = 1; j < 14; j+= 1)
//    {
//      fill(grass[(i-9)*j]);
//      rect((i*grid), (grid*(j-1)), (1+i)*grid, (j)*grid);
//    }
//  } 
//  //roads!
//  fill(sideRdC);
//  rectMode(CORNERS);
//  //Horizontal
//  rect(0, grid, width, 2*grid);
//  rect(0, 8*grid, width, 9*grid);
//  rect(0, 12*grid, 8*grid, height);
//  rect(10*grid, 11*grid, width, 12*grid);
//  //Vertical
//  rect(3*grid, 0, 4*grid, height);
//  rect(16*grid, 0, 17*grid, height);
//  //Main Roads
//  fill(mainRdC);
//  rect(0, 4*grid, width, 6*grid);
//  rect(8*grid, 0, 10*grid, height);
//  //sidewalks
//  stroke(walkC);
//  makeSideWalk(3, 0, 3, 1);
//  makeSideWalk(0, 1, 3, 1);
//  makeSideWalk(0, 2, 3, 2);
//  makeSideWalk(3, 2, 3, 4);
//  makeSideWalk(0, 4, 3, 4);
//  makeSideWalk(4, 4, 4, 2);
//  makeSideWalk(4, 2, 8, 2);
//  makeSideWalk(8, 2, 8, 4);
//  makeSideWalk(8, 4, 4, 4);
//  makeSideWalk(10, 2, 10, 4);
//  makeSideWalk(16, 2, 10, 2);
//  makeSideWalk(16, 4, 16, 2);
//  makeSideWalk(10, 4, 16, 4);
//  makeSideWalk(10, 1, 10, 0);
//  makeSideWalk(16, 1, 10, 1);
//  makeSideWalk(16, 0, 16, 1);
//  makeSideWalk(17, 1, 17, 0);
//  makeSideWalk(20, 1, 17, 1);
//  makeSideWalk(17, 4, 20, 4);
//  makeSideWalk(17, 2, 17, 4);
//  makeSideWalk(20, 2, 17, 2);
//  makeSideWalk(16, 6, 10, 6);
//  makeSideWalk(16, 8, 16, 6);
//  makeSideWalk(10, 8, 16, 8);
//  makeSideWalk(10, 8, 10, 6);
//  makeSideWalk(16, 9, 10, 9);
//  makeSideWalk(16, 11, 16, 9);
//  makeSideWalk(10, 11, 16, 11);
//  makeSideWalk(10, 9, 10, 11);
//  makeSideWalk(16, 12, 10, 12);
//  makeSideWalk(16, 13, 16, 12);
//  makeSideWalk(10, 13, 10, 12);
//  makeSideWalk(4, 9, 4, 12);
//  makeSideWalk(8, 9, 4, 9);
//  makeSideWalk(8, 12, 8, 9);
//  makeSideWalk(8, 12, 4, 12);
//  makeSideWalk(4, 6, 4, 8);
//  makeSideWalk(8, 6, 4, 6);
//  makeSideWalk(8, 8, 8, 6);
//  makeSideWalk(4, 8, 8, 8);
//  makeSideWalk(3, 9, 3, 12);
//  makeSideWalk(0, 9, 3, 9);
//  makeSideWalk(3, 12, 0, 12);
//  makeSideWalk(3, 6, 3, 8);
//  makeSideWalk(0, 6, 3, 6);
//  makeSideWalk(3, 8, 0, 8);
//  makeSideWalk(4, 1, 4, 0);
//  makeSideWalk(8, 1, 4, 1);
//  makeSideWalk(8, 0, 8, 1);
//  makeSideWalk(17, 11, 20, 11);
//  makeSideWalk(17, 9, 17, 11);
//  makeSideWalk(17, 9, 17, 9);
//  makeSideWalk(20, 9, 17, 9);
//  makeSideWalk(17, 8, 20, 8);
//  makeSideWalk(17, 6, 17, 8);
//  makeSideWalk(20, 6, 17, 6);
//}
//void makeRoadLine(int x1, int y1, int x2, int y2)
//{
//  //road lines
//  strokeWeight(1);
//  for(int i = x1; i < x2; i+= 10)
//  {

//  }
//}

//void makeSideWalk(int x1, int y1, int x2, int y2)
//{
//  strokeWeight(6);
//  strokeCap(PROJECT);
//  line(x1*grid, y1*grid, x2*grid, y2*grid);
//}
////colors
//color mainRdC, sideRdC, walkC; // colors for roads, main/side
//color[] grass;
//Setup grass color array
//grass = new color[140];
//for (int i = 0; i < grass.length; i++)
//{
//  grass[i] = lerpColor(#1CFF00, #237600, random(1));
//}
////road colors
//mainRdC = color(50);
//sideRdC = color(150);
//walkC = color(180);
//buildings = new Building[18];
//buildings[0] = new Building(new PVector(2, 3), new PVector(147, 48));
//buildings[1] = new Building(new PVector(1, 107), new PVector(146, 198));
//buildings[2] = new Building(new PVector(206, 108), new PVector(396, 197));
//buildings[3] = new Building(new PVector(206, 3), new PVector(396, 47));
//buildings[4] = new Building(new PVector(1,307),new PVector(146,397));
//buildings[5] = new Building(new PVector(205,310),new PVector(397,398));
//buildings[6] = new Building(new PVector(2,458),new PVector(143,581));
//buildings[7] = new Building(new PVector(206,458),new PVector(395,583));
//buildings[8] = new Building(new PVector(510,8),new PVector(788,41));
//buildings[9] = new Building(new PVector(858,8),new PVector(869,44));
//buildings[10] = new Building(new PVector(505,6),new PVector(793,45));
//buildings[11] = new Building(new PVector(858,6),new PVector(897,46));
//buildings[12] = new Building(new PVector(508,110),new PVector(792,194));
//buildings[13] = new Building(new PVector(857,111),new PVector(899,196));
//buildings[14] = new Building(new PVector(509,310),new PVector(794,396));
//buildings[15] = new Building(new PVector(507,460),new PVector(793,545));
//buildings[16] = new Building(new PVector(855,308),new PVector(897,396));
//buildings[17] = new Building(new PVector(857,459),new PVector(897,546));
/*delLoc[1] = new PVector(513, 55, 3);
 delLoc[2] = new PVector(566, 53, 3);
 delLoc[3] = new PVector(614, 52, 3);
 delLoc[4] = new PVector(677, 55, 3);
 delLoc[5] = new PVector(714, 55, 3);
 delLoc[6] = new PVector(775, 57, 3);
 delLoc[7] = new PVector(873, 57, 3);
 delLoc[8] = new PVector(889, 98, 3);
 delLoc[9] = new PVector(787, 99, 3);
 delLoc[10] = new PVector(729, 96, 3);
 delLoc[11] = new PVector(664, 96, 3);
 delLoc[12] = new PVector(607, 94, 3);
 delLoc[13] = new PVector(593, 94, 3);
 delLoc[14] = new PVector(527, 94, 3);
 delLoc[15] = new PVector(516, 298, 3);
 delLoc[16] = new PVector(572, 299, 3);
 delLoc[17] = new PVector(618, 298, 3);
 delLoc[18] = new PVector(661, 296, 3);
 delLoc[19] = new PVector(740, 298, 3);
 delLoc[20] = new PVector(761, 297, 3);
 delLoc[21] = new PVector(879, 297, 3);
 delLoc[22] = new PVector(881, 408, 3);
 delLoc[23] = new PVector(786, 404, 3);
 delLoc[24] = new PVector(716, 406, 3);
 delLoc[25] = new PVector(689, 409, 3);
 delLoc[26] = new PVector(629, 410, 3);
 delLoc[27] = new PVector(579, 409, 3);
 delLoc[28] = new PVector(512, 403, 3);
 delLoc[29] = new PVector(508, 448, 3);
 delLoc[30] = new PVector(565, 448, 3);
 delLoc[31] = new PVector(631, 449, 3);
 delLoc[32] = new PVector(680, 447, 3);
 delLoc[33] = new PVector(738, 445, 3);
 delLoc[34] = new PVector(783, 445, 3);
 delLoc[35] = new PVector(865, 446, 3);
 delLoc[36] = new PVector(872, 555, 3);
 delLoc[37] = new PVector(775, 559, 3);
 delLoc[38] = new PVector(726, 558, 3);
 delLoc[39] = new PVector(688, 558, 3);
 delLoc[40] = new PVector(641, 554, 3);
 delLoc[41] = new PVector(559, 555, 3);
 delLoc[42] = new PVector(543, 556, 3);
 delLoc[43] = new PVector(537, 207, 3);
 delLoc[44] = new PVector(567, 207, 3);
 delLoc[45] = new PVector(623, 207, 3);
 delLoc[46] = new PVector(675, 206, 3);
 delLoc[47] = new PVector(741, 208, 3);
 delLoc[48] = new PVector(764, 207, 3);
 delLoc[49] = new PVector(863, 206, 3);*/
//ellipse(width/2, height/2, height*0.8, height*0.8);

//--------------DRAW INTERFACE----------------
//fill(#EDB03E);
//rect(10, 10, 150, height-20);
//fill(255);
//rect(width-200, 10, 190, height*.75);

//beginShape();
//vertex(width-10, height*.75+10);
//for (int i = 0; i < 39; i++) {
//  if (i%2 == 0) {
//    vertex(width-10-5*i, height*.75+20);
//  } else {
//    vertex(width-10-5*i, height*.75+12);
//  }
//}
//vertex(width-200, height*.75+10);
//endShape();