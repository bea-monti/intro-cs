
String time = "60";
int t;
int interval = 60;

void setup()
{
  size(700, 700);
  background(255);
  fill(0);
}

void draw()
{
    background(255);
   
    t = interval-int(millis()/1000);
    time = nf(t , 2);
    if(t == 0){
    background(255);
    text("GAME OVER", width/2, height/2, 50);
    stop();
    }

   text(time, 650, 20);
}
