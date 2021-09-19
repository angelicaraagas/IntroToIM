float r=0, s=1;

void setup() {
  size(500, 500);
  background(255);
  noFill();
  stroke(0);
}

void draw() {
  translate(width/2, height/2);
  rotate(r);
  ellipse(0, 0, r, s);
  r++;
  s+=2;
  if (mousePressed == true) {
    background(0);
    noFill();
    stroke(255);
  }
}
