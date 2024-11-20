class Star { //note that this class does NOT extend Floater
  private int x, y, size;
  public Star(){
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
    size = (int)(Math.random()*3)+1;
  }
  
  public void show(){
    noStroke();
    fill(255 - (int)(Math.random()*60),255 - (int)(Math.random()*60),255 - (int)(Math.random()*60));
    ellipse(x, y, size,size);
  }
}
