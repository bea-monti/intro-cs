/*
avoider game
 Bea Monti
 7/5/22
 BLURB HERE...
 */



int gameScreen = 0;
PFont f;
PImage bankImg;

int bank;
PImage pigImg;
int x = 150;
int y = 550;

float r;
float g;
float b;



void setup() {
  size(700, 700);
  pigImg = loadImage("bank.png");
}



void draw() {
  

  //background theme
  gradient(182, 197, 237, 85, 109, 173);
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


movPig();

}
