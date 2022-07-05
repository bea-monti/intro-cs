void setup() {
  size (500, 500);
  background(0);
fill(0);
stroke(255);
for(int i = 0; i < width; i+=50) {
  line(i, 0, i, width);
}
for(int j = 0; j < height; j+= 50){
  line(0, j, width, j);
}

for(int x1 = -width; x1 < width; x1 += 50) {
  line(x1, 0, width, height-x1);
}

for(int x2 = -width; x2 < width +500; x2 += 50) {
  line(x2, 0, -width, height+x2);
}

}
