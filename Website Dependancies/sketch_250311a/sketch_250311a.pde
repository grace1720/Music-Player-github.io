// Dynamic not static
//
//Library - Minim
//
//Global Variables
//
float X, Y, Width, Height;
float topDisplayX, topDisplayY, topDisplayWidth, topDisplayHeight;
float quitX, quitY, quitWidth, quitHeight;


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
