/*
Bea Monti
 6/24/22
 Demo of CAstle tower
 Intended for Hm Intro to CS
 Relevant reference page:
 
 */

void setup() {
  size(500, 500);
  background(#EDBDEB);
  size(500, 500);
  fill(0);
  textSize(38);
  text("Bea Monti", 10, 30);

  // top
  beginShape();

  fill(#E8A2E4);
  stroke(#DB50D4);
  strokeWeight(2);

  vertex(130, 86);
  vertex(225, 4);
  vertex(315, 86);

  endShape(CLOSE);

  // Crown shape
  beginShape();

  fill(#B43AAF);
  stroke(#7E267A);
  strokeWeight(2);

  vertex(130, 90);
  vertex(130, 130);
  vertex(160, 130);
  vertex(160, 330);
  vertex(290, 330);
  vertex(290, 170);
  vertex(290, 130);
  vertex(315, 130);
  vertex(315, 90);
  vertex(225, 90);

  endShape(CLOSE);


  // flag pole
  beginShape();

  fill(#7E1D7A);
  stroke(#500F4D);
  strokeWeight(5);


  vertex(314, 86);
  vertex(314, 2);


  endShape(CLOSE);

  // flag
  beginShape();

  fill(#7E1D7A);
  stroke(#500F4D);
  strokeWeight(5);


  vertex(314, 1);
  vertex(361, 25);
  vertex(314, 50);


  endShape(CLOSE);
}


void draw() {
}

void mousePressed() {
  println(mouseX, mouseY);
  strokeWeight(6);
  point(mouseX, mouseY);
}
