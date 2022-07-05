void setup() {

size(200, 200);
  for (int x = width/2-100; x <= width/2+80; x+= 20) {
 for (int y = height/2-100; y <= height/2+80; y+= 20) {
    square(x, y, 20);
}
}
}
