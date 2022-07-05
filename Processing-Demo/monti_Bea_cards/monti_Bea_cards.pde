/*
Bea Monti
7/5/22
*/


void setup() {
  size(500, 500);
  background(0);
  //cards
  for (int x = 0; x < 500; x+= 100) {
    square(x, 200, 100);
    
   

//random suits 
for (int x = 1; x < 500; x+= 100) {
    teardrop(x, 200, 100);
    float c = random(0, 2);
    if (c <= 1) {
      fill(255);
    }
}
//random numbers
void numbers() {
 text(200, 2);
 int n = int(random(1, 11));
}


// suits
fill(#F71644);
void teardrop(float x, float y, float w, boolean color) {
  triangle(x-w/2, y, x, y-1.5*w, x+w/2, y);
  arc(x, y, w, w, radians(-3), radians(183), OPEN);

}

void diamond(float x, float y, float w, boolean color) {
  push();
  translate(x, y);
  rotate(radians(45));
  square(0, 0, w);
  pop();
}
