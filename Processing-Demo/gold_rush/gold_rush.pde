int score = 0;
float x = 360;
float y = random(0, 360);
float x2 = 360;
float y2 = random(0, 360);
float x3 = 360;
float y3 = random(0, 255);
boolean firstTime=true;

void setup() {
  size(800, 400);
  background(255);
}
void randomrect() {
  fill(0);
  rect(x, y, 40, 40);
  x = x - 2;
  if (x<-40) {
    x = 360;
    y = random(0, 360);
    score++;
  }
}
void randomrect2() {
  fill(0);
  rect(x2, y2, 40, 40);
  x2 = x2 - 2;
  if (x2<-40) {
    x2 = 360;
    y2 = random(0, 360);
    score++;
  }
}
void randomrect3() {
  fill(0);
  rect(x3, y3, 40, 40);
  x3 = x3 - 2;
  if (x3<-40) {
    x3 = 360;
    y3 = random(0, 360);
    score++;
  }
}
void gameover(float squarex, float squarey) {
  if (((mouseY>squarey) && (mouseY<squarey+40) && (squarex <= 80) && 
  (squarex >= 0)) || ((mouseY+40>squarey) && (mouseY+40<squarey+40) && 
  (squarex <= 80) && (squarex >= 0))) {
    fill(255, 0, 0);
    textSize(50);
    text("You lost...", 400, 200);
    noLoop();
  }
}
void draw() {
  println(x, y, x2, y2);
  background(255);
  noStroke();
  fill(200, 0, 0);
 push();
  translate(40, mouseY);
  face(0, 255);
 pop();
  textSize(25);
  text(" score = "+score, 650, 20);
  if (firstTime==true) {
    firstTime=false;
  } else {
    firstTime=true;
  } 
  gameover(x, y);
  gameover(x2, y2);
  gameover(x3, y3);
  randomrect();
  if (frameCount>30) {
    randomrect2();
  }
  if (frameCount>30) {
    randomrect3();
  }
}


void face(float x,float y) {

  fill(220, 200, 0);
  circle(width/2, height/2, 100);
  fill(255, 0, 0);
  arc(width/2, height/2 + 10, 70, 50, radians(0), radians(180), PIE);
  
  fill(255);
  circle(width/2 - 20, height/2 - 10, 20);
  circle(width/2 + 20, height/2 - 10, 20);
   
  fill(0);
  circle(width/2 - 20, height/2 - 10, 7);
  circle(width/2 + 20, height/2 - 10, 7);
  

}
