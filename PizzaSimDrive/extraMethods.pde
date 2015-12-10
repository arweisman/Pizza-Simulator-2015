void setupBuildings()
{
  //buildings
}
boolean checkShape(float x, float y, PShape shape)
{
  for (int i = 1; i < shape.getVertexCount(); i++)
  {
    PVector point = shape.getVertex(i);
    PVector pPoint = shape.getVertex(i-1);
    if (iLine(x, y, point.x, point.y, pPoint.x, pPoint.y)>0) {
      return false;
    }
  }
  return true;
}
float iLine(float x, float y, float x1, float y1, float x2, float y2) {
  return (y1-y2)*x + (x2-x1)*y +(x1*y2) - (x2*y1);
}

void setupDelLoc()
{
  rad = 10;
  sRad = 1;

  delLoc = new ArrayList<PVector>();
  delLoc.add(new PVector(42,50));
  delLoc.add(new PVector(76,58));
  delLoc.add(new PVector(142,58));
  delLoc.add(new PVector(204,54));
  delLoc.add(new PVector(284,66));
  delLoc.add(new PVector(354,62));
  delLoc.add(new PVector(478,76));
  delLoc.add(new PVector(536,76));
  delLoc.add(new PVector(584,74));
  delLoc.add(new PVector(630,70));
  delLoc.add(new PVector(686,78));
  delLoc.add(new PVector(746,22));
  delLoc.add(new PVector(788,68));
  delLoc.add(new PVector(880,86));
  delLoc.add(new PVector(964,84));
  delLoc.add(new PVector(1028,24));
  delLoc.add(new PVector(1092,82));
  delLoc.add(new PVector(1142,68));
  delLoc.add(new PVector(1178,80));
  delLoc.add(new PVector(1230,68));
  delLoc.add(new PVector(1290,66));
  delLoc.add(new PVector(1358,38));
  delLoc.add(new PVector(1462,44));
  delLoc.add(new PVector(1526,30));
  delLoc.add(new PVector(1320,156));
  delLoc.add(new PVector(1382,224));
  delLoc.add(new PVector(1470,216));
  delLoc.add(new PVector(1504,210));
  delLoc.add(new PVector(1562,204));
  delLoc.add(new PVector(1374,240));
  delLoc.add(new PVector(1442,238));
  delLoc.add(new PVector(1464,232));
  delLoc.add(new PVector(1492,230));
  delLoc.add(new PVector(1546,220));
  delLoc.add(new PVector(1204,226));
  delLoc.add(new PVector(1178,224));
  delLoc.add(new PVector(1178,854));
  delLoc.add(new PVector(1206,850));
  delLoc.add(new PVector(1218,1036));
  delLoc.add(new PVector(1338,1026));
  delLoc.add(new PVector(1480,808));
  delLoc.add(new PVector(760,830));
  delLoc.add(new PVector(206,938));
  delLoc.add(new PVector(270,822));
  delLoc.add(new PVector(698,638));
  delLoc.add(new PVector(1566,402));
  delLoc.add(new PVector(432,646));
  delLoc.add(new PVector(78,618));
  delLoc.add(new PVector(856,1036));
  delLoc.add(new PVector(1450,412));
  delLoc.add(new PVector(872,616));
  delLoc.add(new PVector(934,838));
  delLoc.add(new PVector(844,448));
  //delLoc = new PVector[50];
  //delLoc[0] = new PVector(grid*6.5, grid*4.5, 1);

  //HOUSES:
  //delLoc[(int)random(delLoc.length)].z = 2;
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