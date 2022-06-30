/*
Bea Monti
 6/24/22
 Demo of more complex shapes: Arcs and Custom Shapes
 Intended for HM Intro to CS
 
 */

void setup() {
  size(500, 500);
  background(#D8D4D4);
   
  strokeWeight(3);
  //Arcs:
  //An arc is an ellipse but only part of one.
  //for the radians I did 180 + 360 
  
  fill(#FCF6D4);
  stroke(#D8A26B);
  strokeWeight(3);
 

arc(width/2, height/2, 140, 140, radians(10), radians(70));

arc(width/2, height/2, 140, 140, radians(140), radians(170));

arc(width/2, height/2, 140, 140, radians(190), radians(130));

}
