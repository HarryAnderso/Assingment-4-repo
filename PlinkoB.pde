board Board;//initialising  board class
ball Ball;//initialising ball class
void setup(){
 size(400,400); 
 noStroke();
 Board = new board();//objects board class
 Ball = new ball();//objects ball class
}
void draw(){
  background(255);
 Board.drawboard();//draws the board
 Ball.drawball();//draws the ball
}

void keyPressed()//checks if the player has hit a key to drop the ball
{
 Ball.dropball(); 
}
