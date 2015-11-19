class Car{
  
  float angle,vel;
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
    pushMatrix();
    translate(loc.x,loc.y);
    rotate(angle+PI/2);
    rect(-10,-16,10,16);
    popMatrix();    
    loc.x += vel*cos(angle);
    loc.y += vel*sin(angle);
    vel *= .95;
  }
  
  public void turn(float angle)
  {
    this.angle += angle;
  }
  public void accelerate(float speed)
  {
    vel += speed;
  }
  public PVector getLoc(){
    return loc;
  }
}