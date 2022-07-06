int posx;
int posy;

int posx2;
int posy2;

int posx3;
int posy3;

void setup()
{
  size(400, 700);
  posx= 150;
  posy= 550;

  posx2= 250;
  posy2= 550;

  posx3= 200;
  posy3= 700;
}

void draw()
{
  background(0);

  triangle(posx, posy, posx2, posy2, posx3, posy3);
}

void cone(float x, float y) {

  //cone
  fill(#981C09);
  triangle(150, 550, 250, 550, 200, 700);
}


//movement of cone
void keyPressed()
{
  if (keyCode== RIGHT)
    posx++;
  posx2++;
  posx3++;
  if (keyCode== LEFT)
  posx--;
  posx2--;
  posx3--;

 
}
