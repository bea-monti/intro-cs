/*
avoider game
 Bea Monti
 7/5/22
 BLURB HERE...
 */




float score= 0;

PImage startImg;


int gameScreen = 0; 
// 0:  initial screen
//1: game screen
//2; game over screen
String over = "gameOverScreen";
PFont f;
PImage bankImg;

int bank;
PImage pigImg;
int x = 150;
int y = 550;

float r;
float g;
float b;

String time = "60";
int t;
int interval = 60;

float[] pennyX = new float[3];
float[] pennyY = new float[3];

float[] quarterX = new float[4];
float[] quarterY = new float[4];

float[] dollarX = new float[1];
float[] dollarY = new float[1];

float[] hammerX = new float[4];
float[] hammerY = new float[4];

PImage hammerImg;
PImage dollarImg;

PImage pennyImg;
PImage quarterImg;


boolean firstTime=true;





void setup() {
  size(700, 700);
  hammerImg = loadImage("hammer.png");
   dollarImg = loadImage("dollar.png");  
   pennyImg = loadImage("penny.png");
   quarterImg = loadImage("quarter.png");
   startImg = loadImage("cover.png");
  pigImg = loadImage("bank.png");
  f = createFont("Times New Roman", 25, true);


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


  for (int i = 0; i < 4; i++) {
    hammerX[i] = random(0, 400);
    hammerY[i] = random(0, 500);
  }
}



void mousePressed() {
  if (gameScreen==0) {
    startGame();
  }
  if (gameScreen==1) {
    resetGame();
 
  }
  
 
}

void resetGame() {
  
t = 60;



 for (int i = 0; i < 2; i++) {
    pennyY[i]+= 2;
    if (pennyY[i] >= height) {
      pennyY[i] = 0;
      pennyX[i] = random(0, 700);
    }

  }

  //quarter
  for (int i = 0; i < 4; i++) {
    quarterY[i]+= 3;
    if (quarterY[i] >= height) {
      quarterY[i] = 0;
      quarterX[i] = random(15, 385);
   
  }
  }


  //dollar
  for (int i = 0; i < 1; i++) {
    dollarY[i]+= 4;
    if (dollarY[i] >= height) {
      dollarY[i] = 0;
      dollarX[i] = random(0, 700);
   
    }
  }
 


  //hammer
  for (int i = 0; i < 3; i++) {
    hammerY[i]+= 5;
    hammer(hammerX[i], hammerY[i]);
    if (hammerY[i] >= height) {
      hammerY[i] = 0;
      hammerX[i] = random(0, 700);
    }

  }


}
