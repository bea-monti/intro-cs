void gradient(float r1, float g1, float b1, float r2, float g2, float b2) {
  for (int i = 0; i < height; i++ ) {
    r = map(i, 0, height-1, r1, r2);
    g = map(i, 0, height-1, g1, g2);
    b = map(i, 0, height-1, b1, b2);

    stroke(r, g, b);
    line(0, i, width, i);
    }
}


void pig(float x, float y) {
  //bank
  image(pigImg, 375, 565, width/4, height/4);
 
}

void movPig() {
  //moving bank
  push();
  translate(mouseX-450, 0);
  pig(0, 0);
  fill(0);
  pop();
}

void penny(float x, float y) {
 image(pennyImg, x, y, width/14, height/14);

}


void quarter(float x, float y) {
  image(quarterImg, x, y, width/8, height/13);

}

void dollar(float x, float y) {
  image(dollarImg, x, y, width/6, height/6);

}

void hammer(float x, float y) {
  image(hammerImg, x, y, width/5, height/5);

}


void initScreen() {
  background(169, 180, 211);
  textAlign(CENTER);
  textFont (f, 25);
  fill(52, 73, 94);
  textSize(70);
  text("Gold rush", width/2, 100);
  textSize(25);
  text("Click to start", width/2, height-30);
  fill(48, 62, 98);
  textSize(40);
  text("INSTRUCTIONS:", width/2, 160);
   textSize(25);
  text("collect as many coins as you can by moving", width/2, 190);
  text("the pig side to side with the mousepad", width/2, 220);
  text("while avoiding the hammers", width/2, 250);
  image(startImg, 30, 150, 700, 550);
}


void startGame() {
  gameScreen=1;
}
