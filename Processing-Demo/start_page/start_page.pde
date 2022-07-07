
int gameScreen = 0;
PFont f;
PImage bankImg;
float score= 0;

void setup() {
  size(700, 700);
  f = createFont("Times New Roman", 25, true);
  bankImg = loadImage("cover.png");
}



void draw() {
  // Display the contents of the current screen
  if (gameScreen == 0) {
    initScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen == 2) {
  }

}


void initScreen() {
  background(169, 180, 211);
  textAlign(CENTER);
  textFont (f, 25);
  fill(52, 73, 94);
  textSize(70);
  text("Gold rush", width/2, 100);
  textSize(15);
  text("Click to start", width/2, height-30);
  fill(48, 62, 98);
  textSize(40);
  text("INSTRUCTIONS:", width/2, 160);
   textSize(25);
  text("collect as many coins as you can by moving", width/2, 190);
  text("the pig side to side with the mousepad", width/2, 220);
  text("while avoiding the hammmers", width/2, 250);
  image(bankImg, 90, 150, 570, 550);
}

void gameScreen() {
  background(236, 240, 241);
}


public void mousePressed() {
  // if we are on the initial screen when clicked, start the game
  if (gameScreen==0) {
    startGame();
  }
  if (gameScreen==2) {
    gameOverScreen();
  }
}

void startGame() {
  gameScreen=1;
}

//idk yet...

void gameOverScreen() {
  background(0);
  textAlign(CENTER);
  fill(255);
  textSize(30);
  text("Game Over", height/2, width/2 - 20);
  textSize(15);
  text("Click to Restart", height/2, width/2 + 10);
}

void score() {
  score+= 0.01;
  score+= 0.25;
  score++;
}
void printScore(){
  textAlign(CENTER);
  fill(0);
  textSize(30); 
  text("score", height/2, 50);
}
