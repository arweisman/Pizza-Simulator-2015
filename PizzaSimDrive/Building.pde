
class Building
{
  PVector topLeft;
  PVector bottomRight;

  public Building(PVector topLeft, PVector bottomRight) {
    this.topLeft = topLeft;
    this.bottomRight = bottomRight;
  }


  //return true if collision
  //rad is misleading b/c the collision checks for a
  //rect but that doesn't really matter
  public boolean checkCollision(int x, int y, int rad)
  {
    rect(topLeft.x, topLeft.y, bottomRight.x, bottomRight.y);
    if ( x+rad > topLeft.x && x - rad < bottomRight.x && y+rad > topLeft.y && y-rad < bottomRight.y)
    {
      return true;
    } else {
      return false;
    }
  }
}