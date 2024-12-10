Spaceship one = new Spaceship();
Star [] stars = new Star[150];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();

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

  for (int i = 0; i < 10; i++) {
    asteroids.add(new Asteroid());
  }
}

public void draw() {
  background(0);

  one.show();
  one.move();

  if (wPressed == true) {
    one.accelerate(.1);
  } else if (sPressed == true) {
    one.accelerate(-.1);
  } else if (aPressed == true) {
    one.turn(-2);
  } else if (dPressed == true) {
    one.turn(2);
  }

  for (int i = 0; i< stars.length; i++) {
    stars[i].show();
  }

  for (int i = 0; i < bullets.size(); i++) {
    bullets.get(i).show();
    bullets.get(i).move();
  }

  for (int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).show();
    asteroids.get(i).move();

    if ( dist(asteroids.get(i).getCenX(), asteroids.get(i).getCenY(), one.getX(), one.getY()) < 20) {
      asteroids.remove(i);
      i--;
    }
  }

  /*for (int i = 0; i < bullets.size(); i++) {
    if ( dist(asteroids.get(i).getCenX(), asteroids.get(i).getCenY(), one.getX(), one.getY()) < 20) {
      asteroids.remove(i);
      bullets.remove(i);
      i--;
    }
  } */
  
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
  } else if (key == ' ') {
    bullets.add(new Bullet(one));
  }
}

public void keyReleased() {
  if (key == 'w') {
    wPressed = false;
    one.en();
  } else if (key == 'a') {
    aPressed = false;
  } else if (key == 's') {
    sPressed = false;
    one.en();
  } else if (key == 'd') {
    dPressed = false;
  }
}
