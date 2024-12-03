//for the ball
class ball{
  PVector location;
  PVector velocity;
  void drawball(){
    noStroke();
    fill(0,255,255);
    ellipse(40,60,20,20);
    ellipse(360,60,20,20);
    stroke(0);
    line(50,60,350,60);
    line(50,60,65,45);
    line(50,60,65,75);
    line(350,60,335,45);
    line(350,60,335,75);
  }
}
