int numberx;
int numbery;


void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  circle(numberx, numbery, 15);
  numberx = int(random(1, 500));
  numbery = int(random(1, 500));


  if (numberx<=250 && numbery<= 250) {
    fill(#F56083);
  }
  if (numberx <=255 && numbery>=250) {
    fill(#90B0F2);
  }
  if (numberx>=250 && numbery<=250) {
    fill(#F3FA95);
  }
  if (numberx>=250 && numbery>=250) {
    fill(#A5FA95);
  }
}
