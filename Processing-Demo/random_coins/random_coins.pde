float[] pennyX = new float[3];
float[] pennyY = new float[3];

float[] quarterX = new float[4];
float[] quarterY = new float[4];

float[] dollarX = new float[1];
float[] dollarY = new float[1];

float[] hammerX = new float[4];
float[] hammerY = new float[4];

PImage img;


boolean firstTime=true;
PFont f;
float score = 0;




void setup() {
  size(700, 700);
  fill(#0B2A7C);

  f = createFont("Times New Roman", 25, true);
  println(360, 400, 200, 40);
  text(" score = "+score, 600, 20);
  if (firstTime==true) {
    firstTime=false;
  } else {
    firstTime=true;
  }



  for (int i = 0; i < 3; i++) {
    pennyX[i] = random(15, 385);
    pennyY[i] = random(0, 10);
  }

  for (int i = 0; i < 2; i++) {
    quarterX[i] = random(15, 385);
    quarterY[i] = random(0, 350);
  }


  for (int i = 0; i < 1; i++) {
    dollarX[i] = random(0, 400);
    dollarY[i] = random(0, 500);
  }

  //doesnt work...
  for (int i = 0; i < 4; i++) {
    hammerX[i] = random(0, 400);
    hammerY[i] = random(0, 500);
  }
}


void draw() {
   img = loadImage("hammer.png");
  background(0);



  //penny
  for (int i = 0; i < 2; i++) {
    pennyY[i]+= 2;
    penny(pennyX[i], pennyY[i]);
    if (pennyY[i] >= height) {
      pennyY[i] = 0;
      pennyX[i] = random(0, 700);
    }
  }


  //quarter
  for (int i = 0; i < 4; i++) {
    quarterY[i]+= 3;
    quarter(quarterX[i], quarterY[i]);
    if (quarterY[i] >= height) {
      quarterY[i] = 0;
      quarterX[i] = random(15, 385);
    }
  }


  //dollar
  for (int i = 0; i < 1; i++) {
    dollarY[i]+= 4;
    dollar(dollarX[i], dollarY[i]);
    if (dollarY[i] >= height) {
      dollarY[i] = 0;
      dollarX[i] = random(0, 700);
    }
  }

//make 5 a variable
//put in draw

  //hammer
  for (int i = 0; i < 3; i++) {
    hammerY[i]+= 5;
    hammer(375, 550);
    hammer(hammerX[i], hammerY[i]);
    if (hammerY[i] >= height) {
      hammerY[i] = random(0, 100);
      hammerX[i] = random(0, 700);
    }
  }
}

void penny(float x, float y) {
  fill(#D19F70);
  stroke(#CB8F56);
  strokeWeight(5);
  circle(x, y, 29);
  score+= 0.01;
}


void quarter(float x, float y) {
  fill(#BFB7AF);
  stroke(#AFA8A1);
  strokeWeight(5);
  circle(x, y, 32);
  score+= 0.25;
}

void dollar(float x, float y) {
  fill(#48AA6B);
  stroke(#368E55);
  strokeWeight(5);
  rect(x, y, 25, 50);
  score++;
}

void hammer(float x, float y) {
  image(img, x, y, width/5, height/5);
}
