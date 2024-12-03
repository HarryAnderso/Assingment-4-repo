class board{
  int[] pegX={10,60,110,160,210,260,310,360};//stores peg y value
  int[] pegY={120,160,200,240,280};//stores peg x value
  void drawboard(){//draws the board
  stroke(255,0,0);
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
  }
}
