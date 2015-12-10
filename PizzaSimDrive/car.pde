class Car {
  PImage car;
  float angle, vel;
  PVector loc;
  color c;
  boolean isCrashed;
  public Car(PVector loc, float angle, color c)
  {
    this.loc = loc;
    this.angle = angle;
    this.c = c;
    vel = 0;
    car = loadImage("car.png");
  }

  public void draw()
  {
    fill(c);
    noStroke();
    pushMatrix();
    translate(loc.x, loc.y);
    //ADJUST ACCORDING TO 'TILE' CAR IS IN ******************
    if (loc.x >= 800)
    {
      translate(-700, 0);
    }
    if (loc.y>= 533)
    {
      translate(0, -436);
    }
    rotate(angle-PI/2);
    rectMode(CORNERS);
    //rect(-5, -10, 5, 10);
    scale(0.8);
    image(car, 0, -5);
    popMatrix();    
    loc.x += vel*cos(angle);
    loc.y += vel*sin(angle);
    vel *= .96;
  }

  public float getVel()
  {
    return vel;
  }

  public void crash()
  {
    vel = 0;
    isCrashed = true;
  }

  public void turn(float angle)
  {
    this.angle += angle;
  }
  public void accelerate(float speed)
  {
    vel += speed;
  }
  public PVector getLoc() {
    return loc;
  }


  void updatemyCar()
  {
    if (!isCrashed) {
      if (w)
      {
        myCar.accelerate(.04);
      }
      if (a) {
        myCar.turn(-PI/64);
      }
      if (s) {
        myCar.accelerate(-.05);
      }
      if (d) {
        myCar.turn(PI/64);
      }
    }
  }
}
void keyPressed()
{
  if (key == 119) // 'w'
  {
    w = true;
  }
  if (key == 115) // 's'
  {
    s = true;
  }
  if (key == 97) //'a'
  {
    a = true;
  }
  if (key == 100) //'d'
  {
    d = true;
  }
}
void keyReleased()
{
  if (key == 119) // 'w'
  {
    w = false;
  }
  if (key == 115) // 's'
  {
    s = false;
  }
  if (key == 97) //'a'
  {
    a = false;
  }
  if (key == 100) //'d'
  {
    d = false;
  }
}