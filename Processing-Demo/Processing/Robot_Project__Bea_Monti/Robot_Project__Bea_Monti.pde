
/*
Bea Monti
6/23/22
This is a demo of using color commands in Processing. My robot's name is Betty, she has a face, eyes, nose, cheeks, mouth, tongue, a body, and a little bow to accesorize their outfit. However, if i had more time, i would make teeth (using triangles) and arms (probably more than 2!)
*/

void setup() {
   size(500, 500);
   background(#F0F4FA); //light blue
  
 
 //body
fill(#4a9dc7);
  stroke(#28759c);
  strokeWeight(50);
triangle(120, 300, 232, 500, 344, 300);
 
 //face
    fill(#82c9e8);
    stroke(#3f92b5);
    strokeWeight(2);
square(130, 110, 200);

//waist
    fill(#fa8c99);
    stroke(#f56475);
    strokeWeight(50);
line(395, 300, 80, 300);


//left eye
  fill(#ffffff);
  stroke(#080808);
  strokeWeight(2);
circle(190, 160, 80);

//right eye
circle(280, 160, 50);

// right eye dot
 fill(#0f0f0f);
  stroke(#0f0f0f);
  strokeWeight(10);
point(280, 160);

// left eye dot
point(190, 160);

//right cheek
  fill(#f5c4ca);
stroke(#f5aeb6);
strokeWeight(2);
circle(300, 230, 30);


//left cheek
  circle(160, 230, 30);

//mouth
  fill(#000000);
  noStroke();
 rect(178, 205, 100, 50, 10);


// tongue
 fill(#fc324a);
  stroke(#d93447);
  strokeWeight(2);
ellipse(230, 235, 30, 20);


// nose
 fill(#b1d1e0);
  stroke(#327596);
  strokeWeight(2);
ellipse(238, 187, 20, 30);

//bow
 fill(#ba99f0);
  stroke(#a878f5);
  strokeWeight(2);
arc(320, 100, 100, 100, 0, PI+QUARTER_PI, PIE);


   size(500, 500);
    fill(0); 
    textSize(38);
    text("Bea Monti", 10, 30);

}
