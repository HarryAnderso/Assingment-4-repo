//for the ball
class ball{
  PVector location;
  PVector velocity;
  PVector acceleration;
  boolean falling = false;
  ball(){
    location=new PVector(random(40,360),60);
    velocity=new PVector(0,2);
    acceleration=new PVector(.9,1.03);
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
       velocity.x=velocity.x*acceleration.x;
       velocity.y=velocity.y*acceleration.y;
       //print("you really dropped the ball888888888888");
       for(int i=0;i<7;i++){
        for(int o=0;o<4;o++){
          //check here for collision
        }
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
