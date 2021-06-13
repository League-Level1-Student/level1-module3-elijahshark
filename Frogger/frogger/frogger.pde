int hopDist = 10;
int x = 100;
int y = 100;
Car spade = new Car(100,100,20,5); 
Car clubs = new Car(150,150,20,5);
Car hearts = new Car(200,200,20,5);
Car diamonds = new Car(250,250,20,5);
void setup() {
 size(800, 600); 

}
void draw() {
  background(0,0,0);
fill(10, 255, 3);
ellipse(x, y, 15, 15);
spade.display();
clubs.display();
hearts.display();
diamonds.display();
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
/*void sketch(){
 Car spade = new Car(100,100,20,5); 
}*/
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
  int size;
  int speed;
  Car(int x, int y, int size, int speed ){
    this.x=x;
    this.y=y;
    this.size=size;
    this.speed=speed;
  }
  
  void display() {
    fill(255,0,0);
    rect(x , y,  size, size);
  }
  
  

}
