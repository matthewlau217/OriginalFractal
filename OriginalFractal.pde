public void setup() {
  size(400, 400);
  background(255);
}
public void draw() {
  pushMatrix();
  translate(width / 2, height / 2);
  rotate(PI/4);
  for (int i = 0; i < 360; i += 60){
    rotate(i);
  }
  textSize(40);
  text("Valentines?", -100, -100);
  popMatrix();
}
public void rotate(int rot){
  pushMatrix();
  rotate(radians(rot));
  Pedal(25,0,200);
  popMatrix();
}

public void Pedal(float x, float y, int z) {
  if (z <= 10) {
    fill(z + 100, 0 , 0);
    ellipse(x, y, z, z);
  }
  else {
    fill(z + 100, 0 , 0);
    ellipse(x, y, z, z);
    Pedal(x - 15, y, z - 30);
  }
}
