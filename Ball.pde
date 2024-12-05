//for the ball
class ball{
  PVector location;
  PVector velocity;
  PVector acceleration;
  boolean falling = false;
  ball(){
    location=new PVector(int(random(40,360)),60);
    velocity=new PVector(0,2);
    acceleration=new PVector(0,.3);
  }
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
    if(falling==true){
       noStroke();
       ellipse(location.x,location.y,20,20); 
       location.x=location.x+velocity.x;
       location.y=location.y+velocity.y;
       velocity.x=velocity.x+acceleration.x;
       velocity.y=velocity.y+acceleration.y;
       //print("you really dropped the ball888888888888");
       if((location.x+20)>400 || (location.x-20)<0){
         velocity.x=velocity.x*-1;
       }
       
       for(int i=0;i<7;i++){
        for(int o=0;o<4;o++){
          //print(Board.pegY[o]+" & ");
          //print((location.y+20)+"   ");
          //check here for collision
          if(((location.y+18)>Board.pegY[o] && Board.pegY[o]>(location.y-18))){//checks vertical location
            if((location.x+18)>Board.pegX[i] && Board.pegX[i]>(location.x-18) && (o%2==0 || o==0)){//checks horizontal location
            
              if((location.x>Board.pegX[i]) && (o%2==0 || o==0)){//checks if its in a even/zero array row
              velocity.x=2;
              }
              
              else if((location.x<=Board.pegX[i]) && (o%2==0 || o==0)){
                velocity.x=-2; 
              }
              
            
            
              if(location.y<Board.pegY[0]){
              velocity.y=-(velocity.y);
              }
              else{}
          }
          else if((location.x+18)>(Board.pegX[i]+30) && (Board.pegX[i]+30)>(location.x-18) && (o%2 != 0)){
   
             if((location.x>Board.pegX[i]) && (o%2!=0)){
              velocity.x=2;
            }
            else if((location.x<=Board.pegX[i]) && (o%2!=0)){
                velocity.x=-2;
              }
              
              if(location.y<Board.pegY[0]){
              velocity.y=-(velocity.y);
              }
              else{}
            
          }
          else{
          }
          }
        }
       }
       if(location.y>400){
         //falling=false;
       }
    }
    else{
      //print("you havent dropped the ball yet");
    }
  }
  void dropball(){
    //location.x=random(40,360);
    //location.x=10;
    //location.y=60;
    falling=true;
  }
}
