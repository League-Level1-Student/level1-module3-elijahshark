PImage back;
     PImage pipeBottom;
     PImage pipeTop;
     PImage bird;
int pipeX = 350;
int pipeY = 300;
int birdX = 250;
int birdY = 300;
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
  image (bird, birdX, birdY);
  birdY+=gravity;
fill(3, 255, 34);
rect(pipeX, pipeY, 50, 100);

  /*background(back);
            image (pipeBottom,250,375);
            image (pipeTop,250,-130);
            image (bird, 250, 300);*/
}
void mousePressed(){
 birdY-=birdYVelocity;
}
