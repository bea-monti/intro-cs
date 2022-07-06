/*
avoider game
Bea Monti
7/5/22
BLURB HERE...
*/

int cone;

int x = 150;
int y = 550;

float r;
float g;
float b;

void setup() {
  size(400, 700);
 


  //background theme
  gradient(253, 221, 230, 213, 223, 253);
}
void gradient(float r1, float g1, float b1,
  float r2, float g2, float b2) {
  for (int i = 0; i < height; i++ ) {
    r = map(i, 0, height-1, r1, r2);
    g = map(i, 0, height-1, g1, g2);
    b = map(i, 0, height-1, b1, b2);

    stroke(r, g, b);
    line(0, i, width, i);
  }
  }
  
   
  
  void draw() {
  cone(200, 255);
  }
    

 void cone(float x, float y) {

  //cone
  fill(#D3905A);
  stroke(#BF7F4B);
  strokeWeight(2);
  triangle(150, 550, 250, 550, 200, 700);   
  
}
  


  
  
 
