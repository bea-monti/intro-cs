/*
Bea Monti
 6/24/22
 Variables Demo
 created for CS summer 2022
 */

String welcome = "hello, world!"; //global variable
int diameter = 30;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  diameter= diameter + 1; // incrementation
  noStroke();
  fill(225);
  circle(width/2, height/2, diameter);
  fill(200, 200, 0);
  circle(width/2, height/2, diameter/2);

  fill(225);
  textSize(50);
  text(welcome, width/2, height/2);
}

void mousePressed() {
  println(welcome);
  welcome = "goodbye.";
}
