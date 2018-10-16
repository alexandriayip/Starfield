Particle[] P = new Particle[100];

void setup()
{
  size (300, 300);
  for (int i = 0; i<P.length; i++) {
    P[i] = new NormalParticle();
    P[0] = new OddballParticle();
    P[1] = new JumboParticle();
  }
}
void draw()
{
  for (int i = 0; i<P.length; i++) {
    P[i].show();
    P[i].move();
  }
}
class NormalParticle implements Particle {

  double myX, myY, speed, angle;
  int particleColor;

  NormalParticle() {
    myX = 150;
    myY = 150;
    speed = Math.random()*10;
    angle = Math.random()*2*Math.PI;
    particleColor = color(255, 255, 255);
  }

  public void move () {
    myX = myX + Math.cos(angle)* speed; 
    myY = myY + Math.cos(angle) * speed;
  }

  public void show () { 
    fill(particleColor);
    ellipse((float)myX, (float)myY, 50, 50);
  }
}

interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle //uses an interface
{
  double myX, myY, speed, angle;
  int particleColor;

  OddballParticle() {
    myX = 250;
    myY = 250;
    speed = Math.random()*10;
    angle = Math.random()*2*Math.PI;
    particleColor = color(0, 255, 255);
  }

  public void move() {
    myX = myX + Math.cos(angle);
    myY = myY + Math.cos(angle);
  }

  public void show() {
    fill(particleColor);
    rect((float)myX, (float)myY, 5000, 500);
  }
}

class JumboParticle extends OddballParticle
{
 public void show() {
   particleColor = color(255,0,255);
    fill(particleColor);
    rect((float)myX, (float)myY, 7000, 7000);
  }
}
