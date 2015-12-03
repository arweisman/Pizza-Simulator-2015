

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