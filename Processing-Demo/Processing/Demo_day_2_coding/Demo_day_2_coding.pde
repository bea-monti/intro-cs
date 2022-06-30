void setup() {
  size(500, 500);
  background(#F0F4FA); //light blue
  fill(0);
  textSize(48);
  text("Hello World", 100, 100);
  println("Hello world");
}
void draw() {
}
void mousePressed() {
  println(mouseX, mouseY);
}
void  mouseClicked() {
  println(mouseX, mouseY);
} 
void keyPressed() {
  println("key pressed: " + keyCode);
}
