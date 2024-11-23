//your variable declarations hsere
Spaceship one = new Spaceship();
Star [] stars = new Star[150];


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
  one.move();
  one.end();
  for (int i = 0; i< stars.length; i++) {
    stars[i].show();
  }
}

public void keyPressed() {
  if (key == 'h') {
    one.hyperspace();
  } else if (key == 'w') {
    one.accelerate(.1);
  } else if (key == 'a') {
    one.turn(-5);
  } else if (key == 's') {
    one.accelerate(-.1);
  } else if (key == 'd') {
    one.turn(5);
  }
}
