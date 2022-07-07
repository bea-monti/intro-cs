void gameScreen() {
  background(236, 240, 241);

  gradient(182, 197, 237, 85, 109, 173);
  text(time, 650, 20);
  movPig();


  //penny
  for (int i = 0; i < 2; i++) {
    pennyY[i]+= 2;
    if (pennyY[i] >= height) {
      pennyY[i] = 0;
      pennyX[i] = random(0, 700);
    }
    penny(pennyX[i], pennyY[i]);
    if(circleCircleCollisionCheck(pennyX[i]+22, pennyY[i]+22, 55, mouseX, 620, 15)){
     pennyY[i] = 0;
      pennyX[i] = random(0, 700);
    score+=0.01;  
    }
  }

  //quarter
  for (int i = 0; i < 4; i++) {
    quarterY[i]+= 3;
    if (quarterY[i] >= height) {
      quarterY[i] = 0;
      quarterX[i] = random(15, 385);
    }  
     quarter(quarterX[i], quarterY[i]);
    if(circleCircleCollisionCheck(quarterX[i]+40, quarterY[i]+22, 50, mouseX, 620, 15)){
     quarterY[i] = 0;
      quarterX[i] = random(0, 700);
    score+=0.25;  
  }
  }


  //dollar
  for (int i = 0; i < 1; i++) {
    dollarY[i]+= 4;
    if (dollarY[i] >= height) {
      dollarY[i] = 0;
      dollarX[i] = random(0, 700);
    }
     dollar(dollarX[i], dollarY[i]);
    if(circleCircleCollisionCheck(dollarX[i]+55, dollarY[i]+68, 55, mouseX, 620, 15)){
     dollarY[i] = 0;
      dollarX[i] = random(0, 700);
    score++;  
    }
  }
 

  //make 5 a variable
  //put in draw

  //hammer
  for (int i = 0; i < 3; i++) {
    hammerY[i]+= 5;
    hammer(hammerX[i], hammerY[i]);
    if (hammerY[i] >= height) {
      hammerY[i] = 0;
      hammerX[i] = random(0, 700);
    }
//increase speed
  if(t<=50){
    hammerY[i] += 5.2;
   
  }  
   if(t<=40){
    hammerY[i] += 5.3;
   }
    if(t<=30){
  }  
  if(t<=20){
  hammerY[i] += 5.4;
  }  
   if(t<=10){
    hammerY[i] += 5.6;
  }
     
    hammer(hammerX[i], hammerY[i]);     
    if(circleCircleCollisionCheck(hammerX[i]+55, hammerY[i]+68, 55, mouseX, 620, 15)){
     hammerY[i] = 0;
      hammerX[i] = random(0, 700);
    score--;  
    }
  }

  //timer
  text("Time left:", 580, 20);
  t = interval-int(millis()/1000);
  time = nf(t, 2);
  if (t == 0) {
    gameOverScreen();
   
  }
}

void score() {
  score+= 0.01;
  score+= 0.25;
  score++;
  score--;
}
