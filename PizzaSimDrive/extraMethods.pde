void setupDelLoc()
{
  rad = 10;
  sRad = 1;

  delLoc = new PVector[50];
  delLoc[0] = new PVector(grid*6.5, grid*4.2, 1);

  //HOUSES:
  delLoc[1] = new PVector(513, 55, 3);
  delLoc[2] = new PVector(566, 53, 3);
  delLoc[3] = new PVector(614, 52, 3);
  delLoc[4] = new PVector(677, 55, 3);
  delLoc[5] = new PVector(714, 55, 3);
  delLoc[6] = new PVector(775, 57, 2);
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
  delLoc[49] = new PVector(863, 206, 3);
}
void drawDelLoc()
{
  for (PVector p : delLoc)
  {
    noFill();
    strokeWeight(1);
    if (p.z == 1.0)
    {
      if (dispShop) {
        stroke(255, 255, 0);
      } else {
        noFill();
      }
    } else if (p.z == 2) {
      stroke(200, 0, 0);
    } else
    {
      noStroke();
      //stroke(20, 0, 200);
    }
    //animation stuff
    rad +=sRad;
    if (rad > 15) {
      sRad = -.007;
    }
    if (rad < 5) {
      sRad = .007;
    }

    ellipse(p.x, p.y, rad, rad);
  }
}