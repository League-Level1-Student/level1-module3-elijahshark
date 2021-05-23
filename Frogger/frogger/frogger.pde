int hopDist = 10;
int x = 100;
int y = 100;
void setup() {
 size(800, 600); 

}
void draw() {
  background(0,0,0);
fill(10, 255, 3);
ellipse(x, y, 15, 15);

if(y <= 0){
  y=0;
}
if(y >= 600){
  y=600;
}
if(x <= 0){
  x=0;
}
if(x >= 800){
  x=800;
}
}
void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            y-=hopDist;
            
        }
        else if(keyCode == DOWN)
        {
            y+=hopDist; 
            
        }
        else if(keyCode == RIGHT)
        {
            x+=hopDist;
            
        }
        else if(keyCode == LEFT)
        {
            x-=hopDist;
            
        }
    }
}

class Car {
  int x;
  int y;
  
}
