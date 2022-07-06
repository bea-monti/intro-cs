
float[] scoopX = new float[3];
float[] scoopY = new float[3];

float[] scoopX2 = new float[2];
float[] scoopY2 = new float[2];



void setup() {
  size(400, 700);
  for (int i = 0; i < 3; i++) {
    scoopX[i] = random(15, 385);
    scoopY[i] = random(0, 350);
  }
  
  for (int i = 0; i < 2; i++) {
    scoopX2[i] = random(0, 400);
    scoopY2[i] = random(0, 500);
  }
}

void draw() {
  background(0);
 
  //blue icecream
  fill(#5E71E8);
  noStroke();
  for (int i = 0; i < 3; i++) {
    scoopY[i]+= 3;
    scoop(scoopX[i], scoopY[i], 2);
    if (scoopY[i] >= height) {
      scoopY[i] = 0;
      scoopX[i] = random(15, 385);
    }
  }
  
  
  
  
  //red scoop
  fill(#F52F6A);
  noStroke();
  for (int i = 0; i < 2; i++){
     scoopY2[i]+= 6;
    scoop(scoopX2[i], scoopY2[i], 2);
    if (scoopY2[i] >= height) {
      scoopY2[i] = 0;
      scoopX2[i] = random(0, 400);
    }
  }
  
  
}

void scoop(float x, float y, float d) {
  noStroke();
  circle(x, y, 30);
}
