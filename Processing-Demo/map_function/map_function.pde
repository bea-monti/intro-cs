float x = 100;
float y = 200;
float w = 150;
float h = 300;

void setup() {
  size(500, 500);
 
  
}

void draw() {
 

  fill(map(mouseX, 0, width, 0, 255), 0, 100);
  circle(map(mouseX, 0, width, 0, 255), 100, 30);
  
  
    rect(x, y, w, h);
  
  float window1x = map(2, 1, 7, x, x+w);
  float window2x = map(3, 1, 7, x, x+w);
  float window3x = map(4, 1, 7, x, x+w);
  float window4x = map(5, 1, 7, x, x+w);
  rect(window1x, y + 10, 10, 20);
  rect(window2x, y + 10, 10, 20);
  rect(window3x, y + 10, 10, 20);
  rect(window4x, y + 10, 10, 20);
  
  for(int i = 0; i < 7; i++) {  
    float y= map(i, 0, 6, 0, height);
    circle(400, y, 40);
  }

}
