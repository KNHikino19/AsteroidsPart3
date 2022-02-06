class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid() {
    corners = 7;
    xCorners = new int[] {-25, -10, 10, 0, 15, 15, 0};
    yCorners = new int[] {-7, 0, 10, 15, 10, -7, -12};
    myCenterX = (int)(Math.random()*width);
    myCenterY  = (int)(Math.random()*height);
    myColor = color(255);
    setXspeed((int)(Math.random()*7)-4);
    setYspeed((int)(Math.random()*7)-4);
    myPointDirection = (int)(Math.random()*360);
    setTurnSpeed((Math.random()*9));
  }
  public void setX(double x) {
    myCenterX = x;
  }
  public void setY(double y) {
    myCenterY = y;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public void setXspeed(double x) {
    myXspeed = x;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  public void setTurnSpeed(double r) {
    rotSpeed = r;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public Boolean collide() {
    Boolean collided = false;
    for (int i = shots.size()-1; i >=0; i--) {
      Bullet aBullet = shots.get(i);
      if (dist((float)aBullet.getX(), (float)aBullet.getY(), (float)getX(), (float)getY())<10) {
        shots.remove(i);
        collided = true;
        break;
      }
    }
    return collided;
  }
}
