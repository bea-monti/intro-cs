int numberx;
int numbery;


void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  circle(numberx, numbery, 1);
  numberx = int(random(1, 500));
  numbery = int(random(1, 400));

//stars
  if (numberx<=250 && numbery<= 250) {
    fill(#FFFFFF);
  }
   
 if (numberx>=250 && numbery<=250) {
    fill(#FFFFFF);
 }
}
