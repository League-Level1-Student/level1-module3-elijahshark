float pipeGap = 225;
PImage back;
     PImage pipe2;
     PImage pipe;
     PImage flappybird;
float pipeX = 350;
float pipeY = 0;
float birdX = 200;
float birdY = 200;
float birdYVelocity = -10;
float gravity = 0.5;
float pipeXVelocity = 1;
float upperPipeHeight = (float) random(100, 300);
float lowerY = upperPipeHeight + pipeGap;
int score = 0;

void setup(){
  size(500, 500);
  back = loadImage("flappyBackground.jpg");
  pipe2 = loadImage("pipe2.png");
  pipe = loadImage("birdpipe.jpg");
  flappybird = loadImage("flappier2.png");
  flappybird.resize(50,50);
  back.resize(width,height);

}
void draw(){
  background(back);
  image (flappybird, birdX, birdY);
  birdY+=birdYVelocity;
fill(3, 255, 34);
rect(pipeX, pipeY, 50, upperPipeHeight);
rect(pipeX, lowerY, 50, height-lowerY);
rect(0,424,500,1);
pipeX-=pipeXVelocity;
birdYVelocity+=gravity;
teleportPipes();
if (intersectsPipes() == true){
exit();
}
if(birdY > 424){
exit();
}
if(pipeX == birdX){
score++;
}
  fill(0,0,0);
text("score = " + score,10,10);
  
            //image (pipe2,250,375);
            //image (pipe,250,-130);
} 
void mousePressed(){
  birdYVelocity = -10;
//println(mouseX,mouseY);
}

void teleportPipes(){
  if(pipeX < -100){
    pipeX = 515;
    upperPipeHeight = (float) random(100, 200);
    lowerY = upperPipeHeight + pipeGap;
  }
}
boolean intersectsPipes() { 
         if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+50)){
            return true; }
        else if (birdY>lowerY && birdX > pipeX && birdX < (pipeX+50)) {
            return true; }
        else { return false; }
}
