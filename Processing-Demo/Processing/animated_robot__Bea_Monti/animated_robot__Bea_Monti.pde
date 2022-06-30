/*
Bea Monti
 6/27/22
 This is a demo of animating my robot in Processing. 
 As you may know, my robot's name is Betty, 
 She has an oscillating eye
 and a pupil that expands!
 Since they talk a lot, their tongue 
 oscilates in order to depict that!
 However, if i had more time, i would make her bow oscilate
 As well, I would create a repeating motion with her cheeks expanding them
 */

float eyeOffset = 280;
float eyeSpeed = 1;

float d = 0;
float speedY = 0.5;

float dt = 1;
float speedt = 0.5;

void setup() {
  size(500, 500);
  background(#FACFF0); //light pink
}

void draw() {
  beginShape();

  fill(#E8A2E4);
  stroke(#DB50D4);
  strokeWeight(2);

  endShape(CLOSE);

  //body
  fill(#4a9dc7);
  stroke(#28759c);
  strokeWeight(50);
  triangle(120, 300, 232, 500, 344, 300);

  //face
  fill(#82c9e8);
  stroke(#3f92b5);
  strokeWeight(2);
  square(130, 110, 200);

  //waist
  fill(#fa8c99);
  stroke(#f56475);
  strokeWeight(50);
  line(395, 300, 80, 300);


  //left eye
  fill(#ffffff);
  stroke(#080808);
  strokeWeight(2);
  circle(190, 160, 80);

  //right eye
  circle(280, 160, 50);

  // left eye dot

  fill(#B24699);
  circle(190, 160, d);
  d = d + speedY;
  if (d > 70) {
    d = 0;
  }
  if (d < 0) {
    speedY = abs(speedY);
  }

  // right eye dot
  fill(#000000);
  stroke(#0f0f0f);
  strokeWeight(10);
  point(eyeOffset, 160);

  fill(#000000);
  eyeOffset = eyeOffset + eyeSpeed;
  if (eyeOffset > 270) {
    eyeSpeed = -abs(eyeSpeed);
  }
  if (eyeOffset < 260) {
    eyeSpeed = abs(eyeSpeed);
  }


  //right cheek
  fill(#f5c4ca);
  stroke(#f5aeb6);
  strokeWeight(2);
  circle(300, 230, 30);


  //left cheek
  circle(160, 230, 30);

  //mouth
  fill(#000000);
  noStroke();
  rect(178, 205, 100, 50, 10);


  // tongue
  fill(#fc324a);
  stroke(#d93447);
  strokeWeight(2);
  ellipse(230, 235, 30, dt);

  dt = dt + speedt;
  
  if(dt > 20) {
    speedt = -abs(speedY);
  }
  if(dt < 10) {
    speedt = abs(speedt);
  }

  // nose
  fill(#b1d1e0);
  stroke(#327596);
  strokeWeight(2);
  ellipse(238, 187, 20, 30);

  //bow
  fill(#ba99f0);
  stroke(#a878f5);
  strokeWeight(2);
  arc(320, 100, 100, 100, 0, PI+QUARTER_PI, PIE);


  size(500, 500);
  fill(0);
  textSize(38);
  text("Bea Monti", 10, 30);
}

void mousePressed() {
  println(mouseX, mouseY);
  strokeWeight(6);
  point(mouseX, mouseY);
}
