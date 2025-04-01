// Dynamic not static
//
//Library - Minim
//
//Global Variables
//
float X, Y, Width, Height;
float topDisplayX, topDisplayY, topDisplayWidth, topDisplayHeight;
float quitX, quitY, quitWidth, quitHeight;
float shuffleX, shuffleY, shuffleWidth, shuffleHeight;
float fastreverseX, fastreverseY, fastreverseWidth, fastreverseHeight;
float nextsongX, nextsongY, nextsongWidth, nextsongHeight;
float playX, playY, playWidth, playHeight;



void setup() {
  fullScreen(); //displayWidth, displayHeight;
  
  int appWidth = displayWidth;
  int appHeight = displayHeight;
 
 X = appWidth *0.20;
 Y = appHeight * 0.20;
 Width = appWidth * 0.20; 
 Height = appHeight * 0.20; 
 
 //rect( X, Y, Width, Height);
 
 
topDisplayX = appWidth *0.25;
topDisplayY = appHeight * 0.25;
topDisplayWidth = appWidth * 0.50; 
topDisplayHeight = appHeight * 0.30; 
quitX = appWidth * 0.30;
quitY = appHeight * 0.30;
quitWidth = appWidth * 0.30; 
quitHeight = appHeight * 0.30;
rect (topDisplayX, topDisplayY, topDisplayWidth,topDisplayHeight); 
shuffleX = appWidth * 0.20; 
shuffleY = appHeight * 0.20;
shuffleWidth = appWidth * 0.20;
shuffleHeight = appHeight * 0.20; 
fastreverseX =  appWidth * 0.20;
fastreverseY = appHeight * 0.20;
fastreverseWidth =  appWidth * 0.20;
fastreverseHeight = appHeight * 0.20;
playX = appWidth * 0.20;
playY = appHeight * 0.20;
playWidth = appWidth * 0.20;
playHeight = appHeight * 0.20;
 
  rect(quitX, quitY, quitWidth, quitHeight);
  rect(shuffleX, shuffleY, shuffleWidth, shuffleHeight);
  rect(fastreverseX, fastreverseY, fastreverseWidth, fastreverseHeight);
  rect(nextsongX, nextsongY, nextsongWidth, nextsongHeight);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
  rect(X, Y, Width, Height);
}
//
void draw() {}
//
void mousePressed() {}
//
void keyPressed() {} 
//
//End MAIN Program 
