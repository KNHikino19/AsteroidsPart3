Spaceship rocket;
Star [] milkyWay;
ArrayList <Bullet> shots;
ArrayList <Asteroid> spaceObjects;
boolean w, a, s, d;
public void setup() 
{
  w = false;
  a = false;
  s = false;
  d = false;
  size(600, 600); 
  shots = new ArrayList <Bullet>();
  spaceObjects = new ArrayList <Asteroid>();
  rocket = new Spaceship();
  for (int i = 0; i <20; i++)
  {
    spaceObjects.add(new Asteroid());
  }
  milkyWay = new Star[400];
  for (int i =0; i < milkyWay.length; i++)
  {
    milkyWay[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  text("w, a, s, d are movement keys. Use space to shoot", 10,50);
  for (int i = 0; i<milkyWay.length; i++)
  {
    milkyWay[i].show();
  }
  for (Asteroid a : spaceObjects)
  {
    a.move();
    a.show();
  }
  for (int i = spaceObjects.size()-1; i>=  0; i--) {
    Asteroid anAst = spaceObjects.get(i);
    if (anAst.collide()) {
      spaceObjects.remove(i);
    }
  }
  for (int i = spaceObjects.size()-1; i >= 0; i--)
  {
    if (dist((float)rocket.getX(), (float)rocket.getY(), (float)spaceObjects.get(i).myCenterX, (float)spaceObjects.get(i).myCenterY)<20) {
      spaceObjects.remove(i);
    }
  }
  rocket.show();
  rocket.move();
  for (int i = shots.size()-1; i>=0; i--) {
    shots.get(i).move();
    shots.get(i).show();
    if (shots.get(i).getX()>width) {
      shots.remove(i);
    }
    else if (shots.get(i).getY()>height) {
      shots.remove(i);
    }
    else if (shots.get(i).getY()<0) {
      shots.remove(i);
    }
    else if (shots.get(i).getX()<0) {
      shots.remove(i);
    }
  }
  if (w) {
    rocket.accelerate(0.1);
  }
  if (a) {
    rocket.turn(-4);
  }
  if (s) {
    rocket.accelerate(-0.1);
  }
  if (d) {
    rocket.turn(4);
  }
}
public void keyPressed()
{
  if (key == 'h')
  {
    rocket.setXspeed(0);
    rocket.setYspeed(0);
    rocket.setX(Math.random()*width);
    rocket.setY(Math.random()*height);
    rocket.setDirection(Math.random()*360);
  }
  if (key == 'w')
  {
    w = true;
  }
  if (key == 's')
  {
    s = true;
  }
  if (key == 'a')
  {
    a = true;
  }
  if (key == 'd')
  {
    d = true;
  }
}
public void keyReleased()
{  
  if (key == 'w')
  {
    w = false;
  }
  if (key == 's')
  {
    s = false;
  }
  if (key == 'a')
  {
    a = false;
  }
  if (key == 'd')
  {
    d = false;
  }
  if (key == ' ')
  {
    shots.add(new Bullet(rocket));
  }
}
