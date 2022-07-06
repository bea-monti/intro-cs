void setup() {
  size(400, 700);
  
}

void draw() {
  background(0);
  push();
  translate(mouseX-200, 0);
  triangle(150, 550, 250, 550, 200, 700);   
  pop();
}
  
