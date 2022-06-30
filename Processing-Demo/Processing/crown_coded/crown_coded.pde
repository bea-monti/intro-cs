/*
Bea Monti
6/24/22
Demo of Custom Shapes
Intended for Hm Intro to CS
Relevant reference page:

*/

void setup() {
  size(500, 500);
  background(#E0C68B);
  
  // Crown shape
  beginShape();
  vertex(190, 300);
  vertex(150, 215);
  vertex(210, 250);
  vertex(250, 140);
  vertex(290, 250);
  vertex(350, 215);
  vertex(310, 300);

  endShape(CLOSE);

}
void draw() {}

void mousePressed() {
  println(mouseX, mouseY);
  strokeWeight(6);
  point(mouseX, mouseY);
}
