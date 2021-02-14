PImage back;
     PImage pipeBottom;
     PImage pipeTop;
     PImage bird;
int x = 300;
int y = 250;
int birdYVelocity = 30;
int gravity = 1;
void setup(){
  size(600, 500);
  back = loadImage("flappyBackground.jpg");
  pipeBottom = loadImage("bottomPipe.png");
  pipeTop = loadImage("topPipe.png");
  bird = loadImage("bird.png");
  bird.resize(50,50);
  back.resize(width,height);
}
void draw(){
  background(back);
  image (bird, x, y);
  y+=gravity;
fill(red, green, blue);
rect(x, y, width, height);

  /*background(back);
            image (pipeBottom,250,375);
            image (pipeTop,250,-130);
            image (bird, 250, 300);*/
}
void mousePressed(){
 y-=birdYVelocity;
}
