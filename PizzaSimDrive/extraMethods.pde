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