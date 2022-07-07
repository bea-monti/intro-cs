void draw() {
  //background theme
  

  // Display the contents of the current screen
  if (gameScreen == 0) {
    initScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  text(" score = $"+score, 595, 50);
  if (firstTime==true) {
    firstTime=false;
  } else {
    firstTime=true;
  }


  } else if (gameScreen == 2) {
    gameOverScreen();
  }
  

}

 
