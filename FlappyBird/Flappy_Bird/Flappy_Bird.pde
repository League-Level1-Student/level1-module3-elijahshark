float pipeGap = 225;
PImage back;
     PImage pipeBottom;
     PImage pipeTop;
     PImage bird;
float pipeX = 350;
float pipeY = 0;
float pipeX2 = 
float pipeY2 = 
float birdX = 200;
float birdY = 200;
float birdYVelocity = -10;
float gravity = 0.5;
float pipeXVelocity = 1;
float upperPipeHeight = (float) random(100, 300);

void setup(){
  size(500, 500);
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
  birdY+=birdYVelocity;
fill(3, 255, 34);
rect(pipeX, pipeY, 50, upperPipeHeight);
rect(pipeX2, pipeY2, )
pipeX-=pipeXVelocity;
birdYVelocity+=gravity;
teleportPipes();


  /*background(back);
            image (pipeBottom,250,375);
            image (pipeTop,250,-130);
            image (bird, 250, 300);*/
}
void mousePressed(){
birdYVelocity = -10;
}
void teleportPipes(){
  if(pipeX < -100){
pipeX = 515;
upperPipeHeight = (float) random(100, 300);

} 
  }
