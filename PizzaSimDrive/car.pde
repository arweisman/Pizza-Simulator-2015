class Car {

  float angle, vel;
  PVector loc;
  color c;
  public Car(PVector loc, float angle, color c)
  {
    this.loc = loc;
    this.angle = angle;
    this.c = c;
    vel = 0;
  }

  public void draw()
  {
    fill(c);
    noStroke();
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(angle+PI/2);
    rectMode(CORNERS);
    rect(-6, -12, 6, 12);
    popMatrix();    
    loc.x += vel*cos(angle);
    loc.y += vel*sin(angle);
    vel *= .96;
  }

  public void turn(float angle)
  {
    this.angle += angle*map(vel,0,1.5,0,1); //rotate proportional to speed
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
    if (w)
    {
      myCar.accelerate(.1);
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
  if (key == 32)
  {
    saveFrame("City.jpg");
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