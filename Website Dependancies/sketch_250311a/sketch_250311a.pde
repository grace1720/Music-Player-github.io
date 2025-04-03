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
float pauseX, pauseY, pauseWidth, pauseHeight;
float loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight;
float loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight;
float stopX, stopY, stopWidth, stopHeight;
float muteX, muteY, muteWidth, muteHeight;
float fastforwardX, fastforwardY, fastforwardWidth, fastforwardHeight;
float previousX, previousY, previousWidth, previousHeight;
float songimageX, songimageY, songimageWidth, songimageHeight;
float songtitleX, songtitleY, songtitleWidth, songtitleHeight;
float songartistX, songartistY, songartistWidth, songartistHeight;
float timebarX, timebarY, timebarWidth, timebarHeight;
float postionofthesongX, postionofthesongY, postionofthesongWidth, postionofthesongHeight;
float timeremainingX, timeremainingY, timeremainingWidth, timeremainingHeight;
float totaltimeofthesongX, totaltimeofthesongY, totaltimeofthesongWidth, totaltimeofthesongHeight;


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
  rect (topDisplayX, topDisplayY, topDisplayWidth, topDisplayHeight);
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
  pauseX = appWidth * 0.20;
  pauseY = appHeight * 0.20;
  playWidth = appWidth * 0.20;
  playHeight = appHeight * 0.20;
  loopOnceX = appWidth  * 0.30;
  loopOnceY = appHeight * 0.40;
  loopOnceWidth = appWidth * 0.50;
  loopOnceHeight = appHeight * 0.60;
  loopInfiniteX = appWidth * 0.65;
  loopInfiniteY = appHeight * 0.87;
  loopInfiniteWidth = appWidth * 0.57;
  loopInfiniteHeight =  appHeight * 0.22;
  stopX = appWidth * 1/4;
  stopY = appHeight * 3/4;
 // stopWidth = appWidth * ;
  stopHeight = appHeight * 0.37;
  muteX = appWidth * 0.54;
  muteY = appHeight * 0.39;
  muteWidth = appWidth * 0.49;
  muteHeight = appHeight * 0.92;
  fastforwardX = appWidth * 0.47;
  fastforwardY = appHeight * 0.69;
  fastforwardWidth = appWidth * 0.57;
  fastforwardHeight = appHeight * 0.91;
  previousX = appWidth * 0.72;
  previousY = appHeight * 0.33;
  previousWidth = appWidth * 0.64;
  previousHeight = appHeight * 0.45;
  songimageX = appWidth * 0.37;
  songimageY = appHeight * 0.84;
  songimageWidth = appWidth * 0.62;
  songimageHeight = appHeight * 0.22;
  songtitleX = appWidth * 0.59;
  songtitleY = appHeight * 0.34;
  songtitleWidth = appWidth * 0.10;
  songtitleHeight = appHeight * 0.15;
  songartistX = appWidth * 0.18;
  songartistY = appHeight * 0.34;
  songartistWidth = appWidth * 0.43;
  songartistHeight = appHeight * 0.35;
  timebarX = appWidth * 0.42;
  timebarY = appHeight * 0.56;
  timebarWidth = appWidth * 0.22;
  timebarHeight = appHeight * 0.59;
  postionofthesongX = appWidth * 0.39;
  postionofthesongY = appHeight * 0.66;
  postionofthesongWidth = appWidth * 0.89;
  postionofthesongHeight = appHeight * 0.52;
  timeremainingX = appWidth * 0.76;
  timeremainingY = appHeight * 0.74;
  timeremainingWidth = appWidth * 0.82;
  timeremainingHeight = appHeight * 0.94;
  totaltimeofthesongX = appWidth * 0.36;
  totaltimeofthesongY = appHeight * 0.91;
  totaltimeofthesongWidth = appWidth * 0.87;
  totaltimeofthesongHeight   = appHeight * 0.64;



  rect(quitX, quitY, quitWidth, quitHeight);
  rect(shuffleX, shuffleY, shuffleWidth, shuffleHeight);
  triangle(fastreverseX, fastreverseY, fastreverseWidth, fastreverseHeight);
  triangle(nextsongX, nextsongY, nextsongWidth, nextsongHeight);
  triangle(playX, playY, playWidth, playHeight);
  rect(pauseX, pauseY, playWidth, playHeight);
  rect(loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight);
  rect(loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight);
  rect(stopX, stopY, stopWidth, stopHeight);
  rect(muteX, muteY, muteWidth, muteHeight);
 // triangle(fastforwardX, fastforwardY, fastforwardWidth, fastforwardHeight);
 // triangle(previousX, previousY, previousWidth, previousHeight);
  rect(songimageX, songimageY, songimageWidth, songimageHeight);
  rect(songtitleX, songtitleY, songtitleWidth, songtitleHeight);
  rect(songartistX, songartistY, songartistWidth, songartistHeight);
  rect(timebarX, timebarY, timebarWidth, timebarHeight);
  rect(postionofthesongX, postionofthesongY, postionofthesongWidth, postionofthesongHeight);
  rect(timeremainingX, timeremainingY, timeremainingWidth, timeremainingHeight);
  rect(totaltimeofthesongX, totaltimeofthesongY, totaltimeofthesongWidth, totaltimeofthesongHeight);
}
//
void draw() {
}
//
void mousePressed() {
}
//
void keyPressed() {
}
//
//End MAIN Program
