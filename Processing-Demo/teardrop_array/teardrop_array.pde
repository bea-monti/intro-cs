float fallingTearY = 0.5;

float x = random(0, 700);

float[] tearX = new float[100];
float[] tearY = new float[100];

float puddleSize = 0;


void setup() {
  size(700, 700);
  background(#270850);
  for (int i = 0; i < 100; i++) {
    tearX[i] = random(0, width);
    tearY[i] = random(0, height);
  }
}

void draw() {
  background(#270850);
  fill(#5E71E8);
  noStroke();
  for (int i = 0; i < 10; i++) {
    tearY[i]++;
    tear(tearX[i], tearY[i] , 25);
    if (tearY[i] >= height) {
    tearY[i] = 0;
 
    }
  }
 
}


void tear(float x, float y, float d) {
  noStroke();
  fill(#197AA5);
  arc(x, y, d, d,
    radians(0), radians(180), OPEN);
  triangle(x-d/2, y, x, y-d, x+d/2, y);
}
