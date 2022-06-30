// In order to make "oscillating motion" :
// a value that "bounces" back and forth between
// two extremes, we need two variables.
float circleY = 0;
float speedY = 3;

float circleX = 100;
float speedX = 4;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  
  circle(circleX, circleY, 50);
  
  
  
  circleY = circleY + speedY;
  circleX = circleX + speedX;
  
  if(circleY + 25 > height) { // If I hit bottom wall
    speedY = -abs(speedY);
  }
  if(circleY < 25) { // top wall
    speedY = abs(speedY);
  }
  
  if(circleX > width - 25) { // right wall
    speedX = -abs(speedX);
  }
  if(circleX - 25 < 0) { // left wall
    speedX = abs(speedX);
  }
  
  
}
