class Ball {
  //properties
  float x, y, w, h;
  float speedX, speedY;
  color c;

  //constructor
  Ball() {
    x = random(100, width-100);
    y = random(100, height-100);
    w = random(20, 60);
    h = w;
    c = color(random(255), random(255), random(255), random(100));
    speedX = random(-5, 5);
    speedY = random(-5, 5);
  }

  //methods
  void update() {
    checkBounds();
    x += speedX;
    y += speedY;
  }
  void display() {
    fill(c);
    ellipse(x, y, w, h);
  }
  void checkBounds() {
    if (x < 0+w/2 || x>width-w/2) {
      speedX *= -1;
    }
    if (y < 0+h/2 || y > height-h/2) {
      speedY *= -1;
    }
  }
}

Ball b;

Ball[] balls;

void setup() {
  size(800, 800);
  noStroke();

  b = new Ball();

  balls = new Ball[500];
  
  for (int i=0; i<balls.length; i++) {
    balls[i] = new Ball();
  }
}

void draw () {
  clearBackground();
  
  b.update();
  b.display();
  
  for (int i = 0; i<balls.length; i++) {
    balls[i].update();
    balls[i].display();
  }
}

void clearBackground() {
  fill(255);
  rect(0, 0, width, height);
  //background (255);
}
