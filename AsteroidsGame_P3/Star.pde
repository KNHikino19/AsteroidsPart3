class Star
{
  private int starColor;
  private int starX;
  private int starY;
  public Star() {
    starColor = color((int) (Math.random()*255),(int) (Math.random()*255),(int) (Math.random()*255));
    starX = (int) (Math.random()*width);
    starY = (int) (Math.random()*height);
  }
  public void show ()
  {
    fill(starColor);
    stroke(1);
    ellipse(starX, starY, 3, 3);
  }
}
