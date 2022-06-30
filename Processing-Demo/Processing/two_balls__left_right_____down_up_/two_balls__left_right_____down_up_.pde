int x= 50;
int y= 500;
void setup() {
  size(500, 500);
}

void draw() {
  background(#F2C1F0);
  x= x + 1;
  noStroke();
  fill(#C1D2F2);
  circle(x, 300, 30);
  fill(#ECF2C1);
  y= y - 1;
  circle(250, y, 30);

  if (x == 500) {
    x = x - 501;
  
  }

  if (y == 0) {
    y = y + 501;
  }
  
   
  
}
