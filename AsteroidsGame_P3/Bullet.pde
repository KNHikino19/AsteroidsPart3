class Bullet extends Floater {
  Bullet(Spaceship rocket)
  {
    myCenterX = rocket.getX();
    myCenterY = rocket.getY();
    myXspeed = rocket.getXSpeed();
    myYspeed = rocket.getYSpeed();
    myPointDirection = rocket.getPointDirection();
    accelerate(10);
  }
  public void show() {
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move ()
  {         
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
