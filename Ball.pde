//for the ball
class ball{
  PVector location;
  PVector velocity;
  PVector acceleration;
  boolean falling = false;
  ball(){
    //location=new PVector(int(random(40,360)),60);
    velocity=new PVector(0,2);
    acceleration=new PVector(0,.3);
  }
  void drawball(){
    noStroke();//everything ahead just shows a display of the range of the possible ball locations
    fill(0,255,255);
    ellipse(40,60,20,20);
    ellipse(360,60,20,20);
    stroke(0);
    line(50,60,350,60);
    line(50,60,65,45);
    line(50,60,65,75);
    line(350,60,335,45);
    line(350,60,335,75);
    if(falling==false){
      location=new PVector(int(random(40,360)),60);
      velocity=new PVector(0,2);
      acceleration=new PVector(0,.3);
    }
    else if(falling==true){//activates once the player drops the ball
       noStroke();
       ellipse(location.x,location.y,20,20);//draws the ball
       location.x=location.x+velocity.x;//moves ball across the x axis
       location.y=location.y+velocity.y;//moves ball across the y axis
       velocity.x=velocity.x+acceleration.x;//manipulates x acceleration
       velocity.y=velocity.y+acceleration.y;//manipulates y acceleration
       if((location.x+20)>400 || (location.x-20)<0){//for collision with a wall
         velocity.x=velocity.x*-1;
       }
       //everything past here is for determing weather a collision has occured between a peg and a ball
       for(int i=0;i<7;i++){//runs through all pegX variables for possble peg x interceptions
        for(int o=0;o<4;o++){//if a x peg interception is detected, y values get checked next for a match
          if(((location.y+18)>Board.pegY[o] && Board.pegY[o]>(location.y-18))){//checks vertical location
            if((location.x+18)>Board.pegX[i] && Board.pegX[i]>(location.x-18) && (o%2==0 || o==0)){//checks horizontal location & checks if its in a even/zero array row
            
              if((location.x>Board.pegX[i]) && (o%2==0 || o==0)){//checks if its to the right of the peg to determine bounce direction
              velocity.x=2;
              }
              
              else if((location.x<=Board.pegX[i]) && (o%2==0 || o==0)){//checks if its to the left of the peg to determine bounce direction
                velocity.x=-2; 
              }
              
            
            
              if(location.y<Board.pegY[o]){//checks if its above the peg as to reverse gravity
              //velocity.y=-(velocity.y/2);
              }
              else{}
          }
          else if((location.x+18)>(Board.pegX[i]+30) && (Board.pegX[i]+30)>(location.x-18) && (o%2 != 0)){//checks the horizontal position, if its a odd row(disjointed)
   
             if((location.x>Board.pegX[i]) && (o%2!=0)){//checks if its right of the peg
              velocity.x=2;
            }
            else if((location.x<=Board.pegX[i]) && (o%2!=0)){//checks if its left of the peg
                velocity.x=-2;
              }
              
              if(location.y<Board.pegY[o]){//checks to determine if bounce should be added to the veritcal velocity
              //velocity.y=-((velocity.y/2));
              }
              else{}
            
          }
          else{
           }
          }
        }
       }//end of peg collision section
       
       if(location.y>360){//checks if its below the point where endzones start
        if(location.x>350 || location.x<50){//checks if its in a blue zone, if so it adds to score and removes the ball
          Board.score=Board.score+150;
          falling=false;
        }
        else if((350>location.x && location.x>300) || (50<location.x && location.x<100)){//checks if its in a red zone, if so it adds to score and removes the ball
          Board.score=Board.score+100;
          falling=false;
        }
        else if((300>location.x && location.x>250) || (100<location.x && location.x<150)){//checks if its in a orange zone, if so it adds to score and removes the ball
          Board.score=Board.score+50;
          falling=false;
        }
        else if(location.x>150 && 250>location.x){//checks if its in a black zone, if so itremoves the score and removes the ball
          Board.score=0;
          falling=false;
        }
       }
       
       if(location.y>400){//checks if the ball has fallen past the screen, relic from before I actually programmed the score zones but its being kept just as a backup
         falling=false;
       }
    }
    else{
    }
  }
  void dropball(){
    falling=true;//tells the Ball class the player has dropped the ball
  }
}
