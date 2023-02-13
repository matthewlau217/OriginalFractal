int length = 500;
int r = 0;
int h = 500;
int v = 500;
int c = -100;
public void setup() {
  noStroke();
  size(1000, 1000, P3D);
  background(255); 
}

public void draw() {
  if (mousePressed == true) {
    translate(h, v);
    rotate(radians(r));
    length += (int)(Math.random() * 100);
    r += 10;
    if (r % 360 == 0)
      c += 20;
    sierpinski(0, c, length);
    if (c >= 0){
      translate(500, 500);
      fill(255, 0, 0);
      ellipse(0, 0, 50, 50);
      textSize(100);
      fill(255, 0, 0);
      text("Valentines?", -100, -250);
      textSize(10);
      text("just trust, this is a rose", -100, 250);
      exit();
    }
  } 
} 

public void sierpinski(int x, int y, int len) { 
  fill((int)(Math.random() * 255) + 100, 0, 0);
  if(len <= 20){
    ellipse(x, y, len + 50, len + 50);
  } else { 
    sierpinski(x, y, len / 2);
  } 
}
