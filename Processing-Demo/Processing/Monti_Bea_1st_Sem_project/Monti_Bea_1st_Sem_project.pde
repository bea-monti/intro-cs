/*
Bea Monti
 6/29/22
 I revolved this project around art.
 I believe that art is inspirational,
 so on the canvas, i wrote some quotes that
 inspire me. To convey that someone is drawing,
 a paint brush repeatedly moves across the canvas.
 The artist continues to overlap circles.
 They paint several circles in one horizontal line.
 The circles are many random colors generated from the computer.
 These actions occured in order to complete the Semseter 1 CompSci project.
 THE PROCESS
 I began this project not knowing where exactly to start,
 but I knew I wanted it to coorleate to painting because its my favorite hobby.
 Since i coded something im interested in, it automatically made the project
 more exciting!! Although, what i found difficult was organzing my code. This
 is because im not very organized, so I didnt know what part of my project
 was what. EX) I changed the x axis of the easel rather than the brush
 However, i learned to make a lot of comments in orer to better understand what
 im changing. After this hiccup, i enjoyed changing the colors of the project
 in order for it to be appealing! I figured out how to change the range of colors 
 on my own. For instance i only wanted the paint stroke to range from different shades
 of pastels. A helpful comment that my peer gave me was to create interactions between the 
 user and the code. Therefore, one you click the mousepad, a qoute pops up on the canvas.
 All in all, if i had more time, i would angle my brush sideways rather than straight down
 to give the illusion that someone is actually painting.
 
 */

float paintx;
float painty;
//location of brush stroke

float brushOffset = -100;
float brushSpeed = 0.5;
//location of brush

String rps = "";
int r;



void setup() {
  size(500, 500);
  background(random(0), random(0), random(50, 255));

  //texts
  fill(#FCFFFD);
  textSize(25);
  text("Click 4 quote", 350, 25);
  textSize(20);
  text("Click UP 4 sun", 8, 20);

  //grass
  beginShape();
  stroke(random(0), random(50, 200), random(0));
 strokeWeight(200);
  vertex(0, 500);
  vertex(500, 500);
  endShape(CLOSE);

  //easel
  beginShape();
  fill(#AD832A);
  stroke(#D8AC4A);
  strokeWeight(6);
  vertex(250, 35);
  vertex(120, 485);
  vertex(250, 35);
  vertex(380, 485);
  vertex(250, 35);
  vertex(250, 425);
  endShape(CLOSE);

  //canvas
  fill(#FCF9F2);
  stroke(#FAF3E3);
  strokeWeight(2);
  rect(100, 120, 300, 250);
}

void draw() {
  //canvas pt. 2
  //I used this so my text wouldnt overlap
  fill(#FCF9F2);
  noStroke();
  rect(100, 210, 300, 100);
  

  //paint strokes
  fill(random(200, 255), random(200, 255), random(200, 255));
  stroke(#E37294);
  circle(paintx, painty, 20);
  paintx = int(random(100, 400));
  painty = int(random(140, 0));

//brush (and brush parts)

  push();
  translate(brushOffset, -1);
  stroke(#FCF9F2);
  //handle
  beginShape();
  fill(#764F1E);
  vertex(220, 270);
  vertex(225, 140);
  vertex(215, 140);
  endShape(CLOSE);
  //bristles
  fill(#E3AF70);
  rect(215, 140, 10, 20);
  //metal peice of brush
  fill(#D3D1D3);
  rect(217, 160, 7, 10);

  brushOffset = brushOffset + brushSpeed;
  if (brushOffset > 175) {
    brushSpeed = -abs(brushSpeed);
  }
  if (brushOffset < -110) {
    brushSpeed = abs(brushSpeed);
  }
  pop();
 
 //quote color + appear
 //fill(#3264EA);  
 fill(random(20, 100), random(0), random(20, 100));
 text(rps, width/2, height/2);
}


void mousePressed() {
 
//quotes  
  textAlign(CENTER, CENTER);
  textSize(15);
  r = int(random(0, 3));
  if (r == 0) {
    rps = "Believe you can and you're halfway there- TR";
  } else if (r == 1) {
    rps = "I never dreamed about success I worked for it- EL";
  } else {
    rps = "It always seems impossible until its done- NM";
  }
  
  //autograph
  fill(#580850);
  textSize(15);
  text("Drawn by: Bea Monti", 260, 360);
}

//sun
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      fill(random(200, 250), random(100, 235), random(60, 160));
      stroke(#FCB45C);
      strokeWeight(3);
      circle(30, 30, 120);
    }
  }

}

/*
FEEDBACK!
peer 1- create a setting
What i did: I decided that it would be a sunny day. 
This was shown through a light blue background and a sun.
However if i had more time, i would have created a color changing background,
where the the day sky would increasingly get darker into the night

peer 2- change size of text
what i did: I aggreed to changing this because it was quite hard to read.
However, the text was longer than the screensize, so it was very 
difficult to read. As a result, I increased the size of text by 5 
and changed the x coordinate of the canvas to make it bigger. 


peer 3- change appearance of brush
what i did: I 100% aggreed with this statement because the 
art brush did not realy look like an art brush. Therefore,
I played with the dimensions of the bristles and added
a metal peice to the brush. Im not really sure what that 
metal peice is actually called, but i see it on any
typical brush. Although, if i had more time,
i would add lines to the bristles to make it more realistic

peer 3- change the angle of brush
As stated above, if i had more time i would have done this!

*/
