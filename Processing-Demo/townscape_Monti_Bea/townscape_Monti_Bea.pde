
float column1;
float column2;
float column3;
float column4;
float column5;


int hut = 10;
int shop = 10;

float r;
float g;
float b;

void setup() {
  size(500, 500);

  //sunset
  gradient(200, 0, 100, 200, 255, 0);
}

void gradient(float r1, float g1, float b1,
  float r2, float g2, float b2) {
  for (int i = 0; i < height; i++ ) {
    r = map(i, 0, height-1, r1, r2);
    g = map(i, 0, height-1, g1, g2);
    b = map(i, 0, height-1, b1, b2);

    stroke(r, g, b);
    line(0, i, width, i);
  }

  //grass
  beginShape();
  stroke (#1AA013);
  strokeWeight(250);
  vertex(0, 500);
  vertex(500, 500);
  endShape(CLOSE);

  for (int j = 400; j < 490; j+= 35) {
    shop(column1 = int (random(0, 95)), j, 20, j);
  }

  for (int j = 400; j < 490; j+= 35) {
    shop(column2 = int (random(100, 180)), j, 20, j);
  }

  for (int j = 400; j < 490; j+= 35) {
    shop(column3 = int (random(200, 280)), j, 20, j);
  }
  for (int j = 400; j < 490; j+= 35) {
    shop(column4 = int (random(300, 380)), j, 20, j);
  }
  for (int j = 400; j < 490; j+= 35) {
    shop(column5 = int (random(400, 500)), j, 20, j);
  }
}



void hut(float x, float y, float size, boolean chimney) {

  rectMode(CENTER);
  strokeWeight(1);
  stroke(0);
  if (chimney) {

    //= int (random(true, false)) {

    fill(#834845);
    rect(x+size*0.4, y - size*0.8, size*0.2, size*0.5);
  }
  fill(#D3CBA9);
  rect(x, y, size, size*1.2);
  fill(#554D2E);
  triangle(x, y - size*1.3, x-size*0.7, y-size*0.6, x+size*0.7, y-size*0.6);
  fill(#4D5F59);
  circle(x - size*0.25, y - size*0.3, size*0.25);
  fill(#D8A9A6);
  rect(x, y+size*0.4, size*0.25, size*0.4);
}

void shop(float x, float y, float size, int option) {
  rectMode(CENTER);
  strokeWeight(1);
  stroke(0);

  fill(#D3CBA9);
  rect(x, y, size, size*1.2);
  fill(#554D2E);
  triangle(x, y - size*1, x-size*0.7, y-size*0.6, x+size*0.7, y-size*0.6);
  fill(#D8A9A6);
  rect(x+size/4, y+size*0.4, size*0.25, size*0.4);
  fill(#4D5F59);
  rect(x - size*0.17, y + size*0.35, size*0.4, size*0.25);
  fill(#5D4C2B);
  rect(x, y-size*0.16, size*0.8, size*0.2, 5);
  fill(255);
  textSize(10);
  textAlign(CENTER, CENTER);
  if (option == 1) {
    text("SMITHY", x, y - size*0.16);
  } else if (option == 2) {
    text("FLORIST", x, y - size*0.16);
  } else if (option == 3) {
    text("MARKET", x, y - size*0.16);
  }
}
