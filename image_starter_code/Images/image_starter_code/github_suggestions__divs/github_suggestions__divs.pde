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
float positionofthesongX, positionofthesongY, positionofthesongWidth, positionofthesongHeight;
float timeremainingX, timeremainingY, timeremainingWidth, timeremainingHeight;
float totaltimeofthesongX, totaltimeofthesongY, totaltimeofthesongWidth, totaltimeofthesongHeight;
float volumeX, volumeY, volumeWidth, volumeHeight;


void setup() {
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  background(#BFE7FC);

  // Example extra variables (if you want to use them)
  // float X, Y, Width, Height, topDisplayX, topDisplayY, topDisplayWidth, topDisplayHeight;

  // Set button positions and sizes
  quitX = appWidth * 0.00;
  quitY = appHeight * 0.00;
  quitWidth = appWidth * 0.05;
  quitHeight = appHeight * 0.08;

  shuffleX = appWidth * 0.32;
  shuffleY = appHeight * 0.80;
  shuffleWidth = appWidth * 0.05;
  shuffleHeight = appHeight * 0.07;

  fastreverseX =  appWidth * 0.64;
  fastreverseY = appHeight * 0.80;
  fastreverseWidth =  appWidth * 0.05;
  fastreverseHeight = appHeight * 0.07;

  nextsongX = appWidth * 0.56;
  nextsongY = appHeight * 0.80;
  nextsongWidth = appWidth * 0.05;
  nextsongHeight = appHeight * 0.07;

  playX = appWidth * 0.48;
  playY = appHeight * 0.80;
  playWidth = appWidth * 0.05;
  playHeight = appHeight * 0.07;

  pauseX = appWidth * 0.40;
  pauseY = appHeight * 0.90;
  pauseWidth = appWidth * 0.05;
  pauseHeight = appHeight * 0.07;

  loopOnceX = appWidth  * 0.48;
  loopOnceY = appHeight * 0.90;
  loopOnceWidth = appWidth * 0.05;
  loopOnceHeight = appHeight * 0.07;

  loopInfiniteX = appWidth * 0.56;
  loopInfiniteY = appHeight * 0.90;
  loopInfiniteWidth = appWidth * 0.05;
  loopInfiniteHeight =  appHeight * 0.07;

  stopX = appWidth *0.64;
  stopY = appHeight * 0.90;
  stopWidth = appWidth *0.05;
  stopHeight = appHeight * 0.07;

  muteX = appWidth * 0.40;
  muteY = appHeight * 0.80;
  muteWidth = appWidth * 0.05;
  muteHeight = appHeight * 0.07;

  fastforwardX = appWidth * 0.72;
  fastforwardY = appHeight * 0.80;
  fastforwardWidth = appWidth * 0.05;
  fastforwardHeight = appHeight * 0.07;

  previousX = appWidth * 0.80;
  previousY = appHeight * 0.80;
  previousWidth = appWidth * 0.05;
  previousHeight = appHeight * 0.07;

  songimageX = appWidth * 0.35;
  songimageY = appHeight * 0.12;
  songimageWidth = appWidth * 0.55625;
  songimageHeight = appHeight * 0.5075;

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

  positionofthesongX = appWidth * 0.;
  positionofthesongY = appHeight * 0.;
  positionofthesongWidth = appWidth * 0.;
  positionofthesongHeight = appHeight * 0.;

  timeremainingX = appWidth * 0.88;
  timeremainingY = appHeight * 0.66;
  timeremainingWidth = appWidth * 0.06;
  timeremainingHeight = appHeight * 0.05;

  totaltimeofthesongX = appWidth * 0.80;
  totaltimeofthesongY = appHeight * 0.66;
  totaltimeofthesongWidth = appWidth * 0.06;
  totaltimeofthesongHeight = appHeight * 0.05;

  volumeX = appWidth * 0.86;
  volumeY = appHeight * 0.80 ;
  volumeWidth = appWidth * 0.08;
  volumeHeight = appHeight * 0.07 ;
  
  
}

void draw() {
  background(#BFE7FC);

  rect(quitX, quitY, quitWidth, quitHeight);
  rect(shuffleX, shuffleY, shuffleWidth, shuffleHeight);
  rect(fastreverseX, fastreverseY, fastreverseWidth, fastreverseHeight);
  rect(nextsongX, nextsongY, nextsongWidth, nextsongHeight);
  rect(playX, playY, playWidth, playHeight);
  rect(pauseX, pauseY, pauseWidth, pauseHeight);
  rect(loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight);
  rect(loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight);
  rect(stopX, stopY, stopWidth, stopHeight);
  rect(muteX, muteY, muteWidth, muteHeight);
  rect(fastforwardX, fastforwardY, fastforwardWidth, fastforwardHeight);
  rect(previousX, previousY, previousWidth, previousHeight);
  rect(songimageX, songimageY, songimageWidth, songimageHeight);
  rect(songtitleX, songtitleY, songtitleWidth, songtitleHeight);
  rect(songartistX, songartistY, songartistWidth, songartistHeight);
  rect(timebarX, timebarY, timebarWidth, timebarHeight);
  rect(positionofthesongX, positionofthesongY, positionofthesongWidth, positionofthesongHeight);
  rect(timeremainingX, timeremainingY, timeremainingWidth, timeremainingHeight);
  rect(totaltimeofthesongX, totaltimeofthesongY, totaltimeofthesongWidth, totaltimeofthesongHeight);
  rect(volumeX, volumeY, volumeWidth, volumeHeight);
}

void mousePressed() {
  // handle mouse interactions here
}
