boolean a = true;
float y= 0;
float y2= 0;

void setup() {
  size(500, 500);
    
  //building1(100, y);
}


void draw() {
  background(#9BD0E8);
  stroke(0);
  //roof
  fill(#D82555);
    beginShape();
    vertex(250, 250);
    vertex(310, 163);
    vertex(370, 250);
    endShape(CLOSE);
    
    //building1
  fill(#A04C1B);
  rect(width/2, height/2, 120, 300);
    
y++;
  y2+= 2;
  if(y > height) {
    y = 0;
  }
  if(y2 > height) {
    y2 = 0;
  }
   
}

void building1(float x, float y) {
   push();
translate(-50, -100);

  
    
    
  rectMode(CENTER);
  translate(y, x);
  

pop();
}


/*
void draw() {}
 void mousePressed() {
 
 println(mouseX, mouseY);
 strokeWeight(6);
 point(mouseX, mouseY);
 }
 */
