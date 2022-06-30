int y = 1;
int w = 250;
int x = 0;

void setup() {
  size(500, 500);
  background(#000000);
}

void draw() {
background(0);

  //stationary red circle
  fill(250, 0, 0);
  noStroke();
  circle(height/2, width/2, 150);

  // square up to down
  fill(255, 255, 255);
  stroke(#000000);
  strokeWeight(1);
  y= y + 1;
  square(270, y, 40);
  if (y == 500) {
    y = y - 501;
}
  
 // square w big to little
  w= w - 3; 
  square(0, 0, w);
  
  
 
//triangle
triangle (0, 0, 0, 50, 25, 25);
x= x + 3;
  
}
