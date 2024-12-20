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

    for (int k = 0; k < asteroids.size(); k++) {
      if (dist(bullets.get(i).getX(), bullets.get(i).getY(), asteroids.get(k).getCenX(), asteroids.get(k).getCenY()) < 20) {
        asteroids.remove(k);
        bullets.remove(i);
        break;
      } else if (bullets.get(i).getX() > 499 || bullets.get(i).getX() < 0 || bullets.get(i).getY() > 499 || bullets.get(i).getY() < 0 ){
        bullets.remove(i);
        break;
      }
    }
  }

  for (int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).show();
    asteroids.get(i).move();

    if ( dist(asteroids.get(i).getCenX(), asteroids.get(i).getCenY(), one.getX(), one.getY()) < 20) {
      asteroids.remove(i);
      i--;
    }
  }

   if (asteroids.size() == 0) {
    size(500, 500);
    fill(255);
    rect(100, 150, 300, 200);
    fill(0, 255, 0);
    textAlign(CENTER);
    textSize(50);
    text("YOU WIN! :D", 250, 250);
    fill(0);
    textSize(20);
    text("Refresh your page to play again!", 250, 300);
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
