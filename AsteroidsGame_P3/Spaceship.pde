class Spaceship extends Floater  
{   
 public Spaceship(){
   corners = 6;
   xCorners = new int [] {-8, 16, -8, -3, -7, -3};
   yCorners = new int [] {-8, 0, 8, 3,0, -3};
   myColor = 255;
   myCenterX = width/2;
   myCenterY = height/2;
   myXspeed = 0;
   myYspeed = 0;
   myPointDirection = 0;
 }
 public void setXspeed(double x) {
    myXspeed = x;
  }
   public void setYspeed(double y) {
    myYspeed = y;
  }
   public void setX(double x) {
    myCenterX = x;
  }
   public void setY(double y) {
    myCenterY = y;
  }
  public double getXSpeed(){
    return myXspeed;
  }
  public double getYSpeed()
  {
    return myYspeed;
  }
  public double getPointDirection()
  {
    return myPointDirection;
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
     public void setDirection(double d) {
    myPointDirection = d;
  }
}
