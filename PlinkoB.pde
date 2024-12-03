board Board;//initialising  board class
ball Ball;//initialising ball class
void setup(){
 size(400,400); 
 noStroke();
 Board = new board();
}
void draw(){
  background(255);
 Board.drawboard();
}
