boolean[][] grid ;

// Number of columns and rows in the grid
int cols = 10 ;
int rows = 10 ;
int cellWidth = 0 ; 
int cellHeight = 0 ;
PImage win;
final int GAME_RUN=0,GAME_WIN=1;
int gameState=0;

// The grid status color
color turnOnColor = #F0F5FB ;
color turnOffColor = #022547 ;


void setup() {
  size(400,400) ;
  stroke(#95A5B5);
  cellWidth = width / cols  ;
  cellHeight = height / rows ; 
  grid = new boolean[cols][rows] ;
  win=loadImage("win.jpg");
  // Part II: Initialization
  grid[5][5]= true;
  grid[6][5]= true;
  grid[5][6]= true;
  grid[5][4]= true;
  grid[4][5]= true;
  
}


void draw() {
  background(0) ;
      
   switch(gameState){
    
    case GAME_RUN:
      // grid[][]= true/false; statusColor= turnOnColor/turnOffColor
      for (int i = 0; i < cols; i++) {
            for (int j = 0; j < rows; j++) {
            color statusColor = (grid[i][j]) ? turnOnColor : turnOffColor ;
            fill(statusColor) ;
            rect(cellWidth*i, cellHeight*j, cellWidth, cellHeight) ;  
            }
      }
      // Detcet if all grid[][] is false 
      boolean isAllFalse = true;
       for (int i = 0; i < cols; i++) {
        for (int j = 0; j < rows; j++) {
         if(grid[i][j]){
          isAllFalse = false;
          break;
         }
        }
       }
      if (isAllFalse){
      gameState=GAME_WIN;
      } 
     
          
     break;
     
     case GAME_WIN:
     
       image(win,0,0);
       
       if(keyPressed){
         //Part II: Initialization
          grid[5][5]= true;
          grid[6][5]= true;
          grid[5][6]= true;
          grid[5][4]= true;
          grid[4][5]= true;
          gameState=GAME_RUN; 
          
       }
       
     break; 
   }
  
  
  

}

void mouseClicked(){
  int col = mouseX / cellWidth;
  int row = mouseY / cellHeight;
  
  grid[col][row] = !grid[col][row];
}