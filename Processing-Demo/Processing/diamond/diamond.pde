/*
Bea Monti
6/30/22
functions
*/
void setup() {
  //outputs to the GUI: draws something
  size(500, 500);
  circle(100, 100, 100);
  diamond(100, 100);
  diamond(250, 250);
  diamond(0, 100);
  diamond(random(0, width), random(0, height));
  
  //random function outputs to the code:"returns" a value
  random(0, 10);
  int x = int(random(0, 10));
  abs(-5);
 
 // does not output
  fill(100, 255, 0);
  textAlign(CENTER, CENTER);
}
//void means your not returning anything: not outputting to the code
void diamond(float xOffset, float yOffset) {
  push();
  rectMode(CENTER);
  translate(xOffset, yOffset);
  rotate(radians(45));
  square(0, 0, 100);
  pop();
}

void draw() {
  
}

void mousePressed() {
  
}

void keyPressed() {

}
