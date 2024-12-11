class Bullet extends Floater {
  public Bullet(Spaceship one) {
    myCenterX = one.getX();
    myCenterY = one.getY();
    myXspeed = one.getXspeed();
    myYspeed = one.getYspeed();
    myPointDirection = one.getPD();
    accelerate(2);
  }
  
  public void show(){
    fill(255,0,0);
    ellipse((float)myCenterX, (float)myCenterY, 7,7);
  }
  
  public float getX(){
    return (float)myCenterX;
  }
  
  public float getY(){
    return (float)myCenterY;
  }
}

