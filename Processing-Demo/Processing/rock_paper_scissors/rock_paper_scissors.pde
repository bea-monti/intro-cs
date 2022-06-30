/*
Bea Monti
 6/28/22
 Rock, Paper, Scissors
 */
String rps = "";
int r;

void setup() {
  size(500, 500);
  textAlign(CENTER, CENTER);
  textSize(40);
}
void draw() {
  background(#FCCFF5);
  text(rps, width/2, height/2);

  
}

void mousePressed() {
  fill(random(0, 255),
       random(0, 255),
       random(0, 255));
  r = int(random(0, 3));
  if(r == 0) {
    rps = "ROCK";
  } else if(r == 1) {
    rps = "PAPER";
  } else {
    rps = "SCISSORS";
  }
}
