class board{
  int[] pegX={10,60,110,160,210,260,310,360};//stores peg y value
  int[] pegY={120,160,200,240,280};//stores peg x value
  void drawboard(){//draws the board
  stroke(0,0,0);
    for(int i=0; i<pegY.length; i++){//for drawing the x pegs
      for(int p=0; p<pegX.length; p++){//for drawing the y pegs
        if(i%2==0 || i==0){//checks if x is on a even or odd row
        point(pegX[p],pegY[i]); //nearly finished, but im saving adding vlaues for when i get accses to pixel paper
        }  
        else if(i%2 != 0){
          point(pegX[p]+30,pegY[i]);//same as the other but offsets by 30 to save space
        }
      }
    }
    noStroke();
    fill(0,0,255);
    rect(0,360,50,40);
    rect(350,360,400,40);
    fill(255,0,0);
    rect(50,360,50,40);
    rect(300,360,50,40);
    fill(255,100,50);
    rect(100,360,50,40);
    rect(250,360,50,40);
    fill(0);
    rect(150,360,100,40);
    stroke(0);
    
    line(50,360,50,400);
    line(100,360,100,400);
    line(150,360,150,400);
    line(250,360,250,400);
    line(300,360,300,400);
    line(350,360,350,400);
    
  }
}
