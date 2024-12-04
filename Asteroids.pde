class Asteroid extends Floater {
  private double rotationspeed = 0;
  public Asteroid() {
    myColor = 150;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*3 - 1;
    myYspeed = Math.random()*3 - 1;
    myPointDirection = Math.random()*360;
    rotationspeed = (Math.random()*-7);
    
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-8,0,8,8,0};
  }
  
  public void move (){
    turn(rotationspeed);
    super.move();
  }
  
  public float getCenX(){
    return (float)myCenterX;
  }
  
  public float getCenY(){
    return (float)myCenterY;
  }
  
}
