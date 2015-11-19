
class Building
{
  PVector topLeft;
  PVector bottomRight;
  PVector deliveryPoint;
  boolean isDestination;

  public Building(PVector topLeft, PVector bottomRight, PVector deliveryPoint) {
    this.topLeft = topLeft;
    this.bottomRight = bottomRight;
    this.deliveryPoint = deliveryPoint;

    isDestination = false;
  }


  //return true if collision
  //rad is misleading b/c the collision checks for a
  //rect but that doesn't really matter
  public boolean checkCollision(int x, int y, int rad)
  {
    if ( x+rad > topLeft.x && x - rad < bottomRight.x && y+rad > topLeft.y && y-rad < bottomRight.y)
    {
      return true;
    } else {
      return false;
    }
  }

  public PVector getDeliveryPt()
  {
    return deliveryPoint;
  }

  //set the building as the destination;
  public void setDestination()
  {
    isDestination = true;
  }
}