int x = 300;
int y = 250;
int birdYVelocity = 30;
int gravity = 1;
void setup(){
size(600, 500);
  
 
  
  
  
}
  void draw(){
  background(0, 227, 255);
fill(254, 255, 0);
stroke(0, 0, 0);
ellipse(x, y, 25, 25);
y+=gravity;
  
  
}
