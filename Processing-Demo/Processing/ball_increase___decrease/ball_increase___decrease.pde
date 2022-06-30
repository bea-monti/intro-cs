float d = 50;
float speed= 1;
boolean growing = true;


void setup() {
  size(500, 500);
}

void draw() {
background(#DCE5ED);
stroke(#EA42C4);
strokeWeight(2);
fill(#E8C0E1);
circle(width/2, height/2, d);
  
if (growing) {
  d= d + 1; // or use d++, means the same thing

 if(d >= width) {
   growing = false;
 
} else {
  d--;
}
println(d);
if (d <= 0) {
  growing = true;
}

}
}
