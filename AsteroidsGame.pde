//your variable declarations hsere
Spaceship one = new Spaceship();
Star [] stars = new Star[150];
boolean wPressed = false;
boolean aPressed = false;
boolean sPressed = false;
boolean dPressed = false;


public void setup() {
  size(500, 500);
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

public void draw() {
  background(0);
  one.show();
  if (wPressed == true){
    one.accelerate(.1);
    one.move();
  } else if (sPressed == true){
    one.accelerate(-.1);
    one.move();
  } else if (aPressed == true){
    one.turn(-2);
  } else if (dPressed == true){
    one.turn(2);
  }
  for (int i = 0; i< stars.length; i++) {
    stars[i].show();
  }
}

public void keyPressed() {
  if (key == 'h') {
    one.hyperspace();
  } else if (key == 'w') {
    wPressed = true;
  } else if (key == 'a') {
    aPressed = true;
  } else if (key == 's') {
    sPressed = true;
  } else if (key == 'd') {
    dPressed = true;
  }
}

public void keyReleased(){
    if (key == 'w') {
    wPressed = false;
  } else if (key == 'a') {
    aPressed = false;
  } else if (key == 's') {
    sPressed = false;
  } else if (key == 'd') {
    dPressed = false;
  }
}

