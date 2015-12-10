void setupDelLoc()
{
  rad = 10;
  sRad = 1;
  delLoc = new ArrayList<PVector>();
  delLoc.add(new PVector(42, 50));
  delLoc.add(new PVector(76, 58));
  delLoc.add(new PVector(142, 58));
  delLoc.add(new PVector(204, 54));
  delLoc.add(new PVector(284, 66));
  delLoc.add(new PVector(354, 62));
  delLoc.add(new PVector(478, 76));
  delLoc.add(new PVector(536, 76));
  delLoc.add(new PVector(584, 74));
  delLoc.add(new PVector(630, 70));
  delLoc.add(new PVector(686, 78));
  delLoc.add(new PVector(746, 22));
  delLoc.add(new PVector(788, 68));
  delLoc.add(new PVector(880, 86));
  delLoc.add(new PVector(964, 84));
  delLoc.add(new PVector(1028, 24));
  delLoc.add(new PVector(1092, 82));
  delLoc.add(new PVector(1142, 68));
  delLoc.add(new PVector(1178, 80));
  delLoc.add(new PVector(1230, 68));
  delLoc.add(new PVector(1290, 66));
  delLoc.add(new PVector(1358, 38));
  delLoc.add(new PVector(1462, 44));
  delLoc.add(new PVector(1526, 30));
  delLoc.add(new PVector(1320, 156));
  delLoc.add(new PVector(1382, 224));
  delLoc.add(new PVector(1470, 216));
  delLoc.add(new PVector(1504, 210));
  delLoc.add(new PVector(1562, 204));
  delLoc.add(new PVector(1374, 240));
  delLoc.add(new PVector(1442, 238));
  delLoc.add(new PVector(1464, 232));
  delLoc.add(new PVector(1492, 230));
  delLoc.add(new PVector(1546, 220));
  delLoc.add(new PVector(1204, 226));
  delLoc.add(new PVector(1178, 224));
  delLoc.add(new PVector(1178, 854));
  delLoc.add(new PVector(1206, 850));
  delLoc.add(new PVector(1218, 1036));
  delLoc.add(new PVector(1338, 1026));
  delLoc.add(new PVector(1480, 808));
  delLoc.add(new PVector(760, 830));
  delLoc.add(new PVector(206, 938));
  delLoc.add(new PVector(270, 822));
  delLoc.add(new PVector(698, 638));
  delLoc.add(new PVector(1566, 402));
  delLoc.add(new PVector(432, 646));
  delLoc.add(new PVector(78, 618));
  delLoc.add(new PVector(856, 1036));
  delLoc.add(new PVector(1450, 412));
  delLoc.add(new PVector(872, 616));
  delLoc.add(new PVector(934, 838));
  delLoc.add(new PVector(844, 448));

  deliveryLocations = new ArrayList();
  for (int i = 0; i < 5; i++)
  {
    deliveryLocations.add( (int) random(delLoc.size()));
  }
}
void drawDelLoc()
{
  //animation stuff
  stroke(255, 255, 0);
  noFill();
  strokeWeight(1);
  rad +=sRad;
  if (rad > 15) {
    sRad = -.23;
  }
  if (rad < 5) {
    sRad = .23;
  }
  //loop through array of current delivery locations and draw ellipses at the appropriate locations
  for (int i = 0; i < deliveryLocations.size(); i++)
  {
    PVector p = delLoc.get((int)deliveryLocations.get(i));
    pushMatrix();
    if (myCar.getLoc().x > 800) {
      translate(-700, 0);
    }
    if (myCar.getLoc().y > 533)
    {
      translate(0, -436);
    }
    ellipse(p.x, p.y, rad, rad);
    popMatrix();
  }
  if (currentScreen == 1 && deliveriesToDo <= 0)
  {
    if (dist(494, 232, myCar.getLoc().x, myCar.getLoc().y) < 15)
    {
      drawFinal();
    } else {
      ellipse(494, 232, rad, rad);
    }
  }
}