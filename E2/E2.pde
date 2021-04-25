PImage img  ;
int r = 10;//size of ecllipse  


void setup () {
  size(400, 400) ;
  img = loadImage("spongebob.jpg") ; 
  
  image(img, 0, 0) ; 
  loadPixels();
}


void draw() {
  // update pixels[] if mouse is pressed
  
  // update screen with pixels[]
  updatePixels();
  
  // show cursor
  stroke(255,0,0);
  noFill();
  ellipse(mouseX,mouseY,20,20);
}
