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
float volumeX, volumeY, volumeWidth, volumeHeight;

// 

void setup() {
  fullScreen(); //displayWidth, displayHeight;

  int appWidth = displayWidth;
  int appHeight = displayHeight;
  background(#BFE7FC);
  triangle(x1, y1, x2, y2, x3, y3);

  X = appWidth *0.20;
  Y = appHeight * 0.20;
  Width = appWidth * 0.20;
  Height = appHeight * 0.20;

  //rect( X, Y, Width, Height);


  topDisplayX = appWidth *0.;
  topDisplayY = appHeight * 0.;
  topDisplayWidth = appWidth * 0.;
  topDisplayHeight = appHeight * 0.;
  quitX = appWidth * 0.00;
  quitY = appHeight * 0.00;
  quitWidth = appWidth * 0.05;
  quitHeight = appHeight * 0.08;
  rect (topDisplayX, topDisplayY, topDisplayWidth, topDisplayHeight);
  shuffleX = appWidth * 0.32;
  shuffleY = appHeight * 0.80;
  shuffleWidth = appWidth * 0.05;
  shuffleHeight = appHeight * 0.07;
  fastreverseX =  appWidth * 0.70;
  fastreverseY = appHeight * 0.80;
  fastreverseWidth =  appWidth * 0.05;
  fastreverseHeight = appHeight * 0.07;
 
   playX = appWidth * 0.48;
  playY = appHeight * 0.80;
  playWidth = appWidth * 0.05;
  playHeight = appHeight * 0.07;
  //pauseX = appWidth * 0.0;
  //pauseY = appHeight * 0.0;
  //playWidth = appWidth * 0.0;
 // playHeight = appHeight * 0.0;
  loopOnceX = appWidth  * 0.64;
  loopOnceY = appHeight * 0.80;
  loopOnceWidth = appWidth * 0.05;
  loopOnceHeight = appHeight * 0.07;
  loopInfiniteX = appWidth * 0.;
  loopInfiniteY = appHeight * 0.;
  loopInfiniteWidth = appWidth * 0.;
  loopInfiniteHeight =  appHeight * 0.;
  stopX = appWidth *0.56;
  stopY = appHeight * 0.80;
  stopWidth = appWidth *0.05;
  stopHeight = appHeight * 0.07;
  muteX = appWidth * 0.40;
  muteY = appHeight * 0.80;
  muteWidth = appWidth * 0.05;
  muteHeight = appHeight * 0.07;
 // fastforwardX = appWidth * 0.;
 // fastforwardY = appHeight * 0.;
 // fastforwardWidth = appWidth * 0.;
 // fastforwardHeight = appHeight * 0.;
  previousX = appWidth * 0.;
  previousY = appHeight * 0.;
  previousWidth = appWidth * 0.;
  previousHeight = appHeight * 0.;
  songimageX = appWidth * 0.34375;
  songimageY = appHeight * 0.123;
  songimageWidth = appWidth * 0.56625;
  songimageHeight = appHeight * 0.5375;
  songtitleX = appWidth * 0.02125;
  songtitleY = appHeight * 0.375;
  songtitleWidth = appWidth * 0.31875;
  songtitleHeight = appHeight * 0.0625;
  songartistX = appWidth * 0.1125;
  songartistY = appHeight * 0.1125;
  songartistWidth = appWidth * 0.20875;
  songartistHeight = appHeight * 0.14125;
  timebarX = appWidth * 0.325;
  timebarY = appHeight * 0.71175;
  timebarWidth = appWidth * 0.6111;
  timebarHeight = appHeight * 0.0625; 
  postionofthesongX = appWidth * 0.;
  postionofthesongY = appHeight * 0.;
  postionofthesongWidth = appWidth * 0.;
  postionofthesongHeight = appHeight * 0.;
  timeremainingX = appWidth * 0.;
  timeremainingY = appHeight * 0.;
  timeremainingWidth = appWidth * 0.;
  timeremainingHeight = appHeight * 0.;
  totaltimeofthesongX = appWidth * 0.;
  totaltimeofthesongY = appHeight * 0.;
  totaltimeofthesongWidth = appWidth * 0.;
  totaltimeofthesongHeight   = appHeight * 0.;
  volumeX = appWidth * 0. ;
  volumeY = appHeight * 0. ;
  volumeWidth = appWidth * 0 ;
  volumeHeight = appHeight * 0 ;



  rect(quitX, quitY, quitWidth, quitHeight);
  rect(shuffleX, shuffleY, shuffleWidth, shuffleHeight);
  triangle(fastreverseX, fastreverseY, fastreverseWidth, fastreverseHeight);
 // triangle(nextsongX, nextsongY, nextsongWidth, nextsongHeight);
 // triangle(playX, playY, playWidth, playHeight);
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
  rect(playX, playY, playWidth, playHeight);
  rect(volumeX, volumeY, volumeWidth, volumeHeight);
  
  
  
  
  
  
  
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
