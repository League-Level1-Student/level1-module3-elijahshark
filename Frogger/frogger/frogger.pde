int hopDist = 10;
int x = 100;
int y = 100;
void setup() {
 size(800, 600); 
}
void draw() {
  background(0,0,0);
fill(10, 255, 3);
ellipse(100, 100, 15, 15);
}
void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
           
        }
        else if(keyCode == DOWN)
        {
            //Frog Y position goes down 
        }
        else if(keyCode == RIGHT)
        {
            //Frog X position goes right
        }
        else if(keyCode == LEFT)
        {
            //Frog X position goes left
        }
    }
}
