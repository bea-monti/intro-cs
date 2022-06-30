/*
Bea Monti
6/28/22
*/

void setup() {
  size(500, 500);
}


void draw() {
  fill(#861073);
  textAlign(CENTER, CENTER);
  textSize(100);
}
void keyPressed () {
  background(#F7CFF1);
  if (key == CODED) {
   fill(#FF00E6);
    if (keyCode == UP) {
      text("rock", width/2, height/2);
    } else if (keyCode == DOWN) {
      text("paper", width/2, height/2);
    }
    else if (keyCode == LEFT) {
    text("scissors", width/2, height/2);
  }
  } 
}
