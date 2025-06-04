//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //initates entire class
int numberOfSongs = 5; //Best Practice
//int numberOfSoundEffects = ???
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
//AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
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
//
//Button Shape Variables
float stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
float fastForwardX1, fastForwardY1, fastForwardX2, fastForwardY2, fastForwardX3, fastForwardY3;
float fastForwardX4, fastForwardY4, fastForwardX5, fastForwardY5, fastForwardX6, fastForwardY6;
float pauseX1, pauseY1, pauseWidth1, pauseHeight1;
float pauseX2, pauseY2, pauseWidth2, pauseHeight2;
//
PImage myFirstImage, mySecondImage;
float imageWidthChanged_First, imageHeightChanged_First;
float imageWidthChanged_Second, imageHeightChanged_Second;
//
PFont appFont;
float fontSize;
//
void setup() {
  //Display
  //fullScreen();
  size(700, 500);
  int appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  int appShortSide = ( appWidth < appHeight ) ? appWidth : appHeight ;
  //
  //Music Loading - STRUCTURED
  minim = new Minim(this);
  String MusicFile = " pOp MuZiC/";
  String Crybaby = "CryBaby - SZA.mp3";
  String HellN_Back = "Hell N Back - Bakar (feat Summmer Walker).mp3";
  String LamoreDiceCiao  = "Lamore Dice Ciao - Armando Travjoli.mp3";
  String PopMuzik = "PopMuzik - Robin, M Scott.mp3";
  String TillTheEndOfTime  = "TillTheEndOfTime - Laurindo Almedia.mp3";
  //Able to Music Load Faster with an Array
  //
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = "../../" + MusicFile ; 
  //Create a FOR loop to loadFile() a changing songName, Create a Procedure with two Arrays first
  String file = musicDirectory + Crybaby + fileExtension_mp3; //relative pathway or directory
  //String file = musicDirectory +  fileExtension_mp3; //relative pathway or directory
  currentSong=0;
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + HellN_Back + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + LamoreDiceCiao + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + PopMuzik + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + TillTheEndOfTime + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  //Music Testing
  currentSong=0;
  //playList[currentSong].play();
  //
  //println("Start of Console");
  //Fonts from OS
  /*
  String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  appFont = createFont ("Candara", appShortSide); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug, cannot mix loadFont() and createFont()
  //
  //Population
  //rect(DIV) is a square to start, by design
  int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
  int widthOfButton = appWidth/numberOfButtons;
  int beginningButtonSpace = widthOfButton;
  int buttonY = appHeight*3/5;
  
 
void draw() {
  background(#BFE7FC);

  // Quit (X)
void DrawQuit(float x, float y, float w, float h) {
  stroke(200,0,0); strokeWeight(4);
  line(x + w*0.2, y + h*0.2, x + w*0.8, y + h*0.8);
  line(x + w*0.2, y + h*0.8, x + w*0.8, y + h*0.2);
}

 // Shuffle (crossed arrows)
void drawShuffle(float x, float y, float w, float h) {
  stroke(0); strokeWeight(3); noFill();
  // First arrow
  beginShape();
  vertex(x + w*0.2, y + h*0.3);
  vertex(x + w*0.8, y + h*0.7);
  endShape();
  // Second arrow
  beginShape();
  vertex(x + w*0.2, y + h*0.7);
  vertex(x + w*0.8, y + h*0.3);
  endShape();
  // Arrowheads
  triangle(x + w*0.75, y + h*0.68, x + w*0.85, y + h*0.68, x + w*0.8, y + h*0.78);
  triangle(x + w*0.75, y + h*0.32, x + w*0.85, y + h*0.32, x + w*0.8, y + h*0.22);
}


  // Fast Reverse (||<<)
void drawFastReverse(float x, float y, float w, float h) {
  fill(0); noStroke();
  float m = w*0.12;
  // Bar
  rect(x + w*0.7, y + h*0.25, m, h*0.5);
  // Left triangles
  triangle(x + w*0.65, y + h*0.2, x + w*0.65, y + h*0.8, x + w*0.4, y + h*0.5);
  triangle(x + w*0.55, y + h*0.2, x + w*0.55, y + h*0.8, x + w*0.3, y + h*0.5);
}
 
  // Next Song (>|>)
void drawNextSong(float x, float y, float w, float h) {
  fill(0); noStroke();
  float m = w*0.12;
  // Bar
  rect(x + w*0.18, y + h*0.25, m, h*0.5);
  // Right triangles
  triangle(x + w*0.25, y + h*0.2, x + w*0.25, y + h*0.8, x + w*0.5, y + h*0.5);
  triangle(x + w*0.35, y + h*0.2, x + w*0.35, y + h*0.8, x + w*0.6, y + h*0.5);
}


// Play (>)
void drawPlay(float x, float y, float w, float h) {
  fill(0); noStroke();
  triangle(x + w*0.3, y + h*0.2, x + w*0.3, y + h*0.8, x + w*0.75, y + h*0.5);
}

// Pause (||)
void drawPause(float x, float y, float w, float h) {
  fill(0); noStroke();
  float barW = w*0.2;
  rect(x + w*0.25, y + h*0.2, barW, h*0.6, 4);
  rect(x + w*0.55, y + h*0.2, barW, h*0.6, 4);
}  

// Loop Once (circle arrow + 1)
void drawLoopOnce(float x, float y, float w, float h) {
  noFill(); stroke(0); strokeWeight(3);
  arc(x + w*0.5, y + h*0.5, w*0.7, h*0.7, radians(40), radians(320));
  // Arrowhead
  float ax = x + w*0.8, ay = y + h*0.5;
  triangle(ax, ay, ax-w*0.07, ay-h*0.07, ax-w*0.07, ay+h*0.07);
  fill(0); noStroke();
  textAlign(CENTER,CENTER); textSize(h*0.42);
  text("1", x + w*0.5, y + h*0.7);
}
 
// Loop Infinite (∞)
void drawLoopInfinite(float x, float y, float w, float h) {
  fill(0); noStroke();
  textAlign(CENTER, CENTER); textSize(h*0.8);
  text("∞", x + w*0.5, y + h*0.52);
}
  
// Stop (square)
void drawStop(float x, float y, float w, float h) {
  fill(0); noStroke();
  rect(x + w*0.25, y + h*0.25, w*0.5, h*0.5, 6);
}

// Mute (speaker + x)
void drawMute(float x, float y, float w, float h) {
  fill(0); noStroke();
  // Speaker (triangle)
  triangle(x + w*0.25, y + h*0.6, x + w*0.4, y + h*0.6, x + w*0.25, y + h*0.4);
  rect(x + w*0.4, y + h*0.4, w*0.13, h*0.2);
  // X
  stroke(200,0,0); strokeWeight(3);
  line(x + w*0.65, y + h*0.4, x + w*0.8, y + h*0.6);
  line(x + w*0.8, y + h*0.4, x + w*0.65, y + h*0.6);
}

// Fast Forward (>>|)
void drawFastForward(float x, float y, float w, float h) {
  fill(0); noStroke();
  float m = w*0.12;
  // Bar
  rect(x + w*0.18, y + h*0.25, m, h*0.5);
  // Right triangles
  triangle(x + w*0.35, y + h*0.2, x + w*0.35, y + h*0.8, x + w*0.6, y + h*0.5);
  triangle(x + w*0.45, y + h*0.2, x + w*0.45, y + h*0.8, x + w*0.7, y + h*0.5);
}

// Previous (|<<)
void drawPrevious(float x, float y, float w, float h) {
  fill(0); noStroke();
  float m = w*0.12;
  // Bar
  rect(x + w*0.7, y + h*0.25, m, h*0.5);
  // Left triangles
  triangle(x + w*0.65, y + h*0.2, x + w*0.65, y + h*0.8, x + w*0.4, y + h*0.5);
  triangle(x + w*0.55, y + h*0.2, x + w*0.55, y + h*0.8, x + w*0.3, y + h*0.5);
}  
 

  // Song image (music note, as placeholder)
  drawButtonBox(songimageX, songimageY, songimageWidth, songimageHeight);
  strokeWeight(4);
  stroke(80,80,80);
  fill(200,200,255, 50);
  ellipse(songimageX+songimageWidth*0.3, songimageY+songimageHeight*0.65, songimageWidth*0.12, songimageHeight*0.22);
  line(songimageX+songimageWidth*0.35, songimageY+songimageHeight*0.2, songimageX+songimageWidth*0.35, songimageY+songimageHeight*0.72);
  ellipse(songimageX+songimageWidth*0.55, songimageY+songimageHeight*0.65, songimageWidth*0.12, songimageHeight*0.22);
  line(songimageX+songimageWidth*0.60, songimageY+songimageHeight*0.2, songimageX+songimageWidth*0.60, songimageY+songimageHeight*0.72);

  // Song title (just text)
  drawButtonBox(songtitleX, songtitleY, songtitleWidth, songtitleHeight);
  fill(50);
  textAlign(LEFT, CENTER);
  textSize(songtitleHeight*0.5);
  text("Song Title", songtitleX+songtitleWidth*0.05, songtitleY+songtitleHeight*0.5);

  // Song artist (just text)
  drawButtonBox(songartistX, songartistY, songartistWidth, songartistHeight);
  fill(80);
  textAlign(LEFT, CENTER);
  textSize(songartistHeight*0.3);
  text("Artist Name", songartistX+songartistWidth*0.05, songartistY+songartistHeight*0.5);

  // Time Bar (progress bar)
  drawButtonBox(timebarX, timebarY, timebarWidth, timebarHeight);
  fill(180,220,255, 120);
  noStroke();
  rect(timebarX+timebarWidth*0.03, timebarY+timebarHeight*0.35, timebarWidth*0.94, timebarHeight*0.3, 20);
  fill(70,170,255, 190);
  rect(timebarX+timebarWidth*0.03, timebarY+timebarHeight*0.35, timebarWidth*0.4, timebarHeight*0.3, 20); // pretend progress

  // Timeremaining (just text)
  drawButtonBox(timeremainingX, timeremainingY, timeremainingWidth, timeremainingHeight);
  fill(40,40,40);
  textAlign(CENTER, CENTER);
  textSize(timeremainingHeight*0.4);
  text("-2:30", timeremainingX+timeremainingWidth*0.5, timeremainingY+timeremainingHeight*0.5);

  // Totaltimeofthesong (just text)
  drawButtonBox(totaltimeofthesongX, totaltimeofthesongY, totaltimeofthesongWidth, totaltimeofthesongHeight);
  fill(40,40,40);
  textAlign(CENTER, CENTER);
  textSize(totaltimeofthesongHeight*0.4);
  text("3:41", totaltimeofthesongX+totaltimeofthesongWidth*0.5, totaltimeofthesongY+totaltimeofthesongHeight*0.5);

  // Volume (speaker + bars)
  drawButtonBox(volumeX, volumeY, volumeWidth, volumeHeight);
  strokeWeight(3);
  stroke(0);
  fill(180);
  float vspkX = volumeX+volumeWidth*0.23;
  float vspkY = volumeY+volumeHeight*0.35;
  beginShape();
  vertex(vspkX, vspkY+volumeHeight*0.15);
  vertex(vspkX+volumeWidth*0.16, vspkY+volumeHeight*0.15);
  vertex(vspkX+volumeWidth*0.30, vspkY);
  vertex(vspkX+volumeWidth*0.30, vspkY+volumeHeight*0.45);
  vertex(vspkX+volumeWidth*0.16, vspkY+volumeHeight*0.30);
  vertex(vspkX, vspkY+volumeHeight*0.30);
  endShape(CLOSE);
  // Bars
  noFill();
  stroke(80,160,70);
  arc(volumeX+volumeWidth*0.55, volumeY+volumeHeight*0.55, volumeWidth*0.14, volumeHeight*0.20, -PI/3, PI/3);
  arc(volumeX+volumeWidth*0.65, volumeY+volumeHeight*0.55, volumeWidth*0.20, volumeHeight*0.32, -PI/3, PI/3);

  // Position of the song (skip, is empty/not used)
  // drawButtonBox(positionofthesongX, positionofthesongY, positionofthesongWidth, positionofthesongHeight);
}

void drawButtonBox(float x, float y, float w, float h) {
  stroke(80);
  strokeWeight(2);
  fill(255,255,255, 60);
  rect(x, y, w, h, min(w, h)*0.2);
}

void mousePressed() {
  // handle mouse interactions here
}
//
  //Images Drawing
  //
  //Image Aspect Ratio Algorithm: demonstrating Landscape to Portrait
  //String upArrow = "../../";
  //String folders = "Lesson Dependancies Folder/Images/";
  //String bike = "bike"; //Fpr QUIT Button
  //String oldManPortrait = "Old man portrait"; //MAIN Image DIV
  //String fileExtensionJPG = ".jpg";
  //String fileExtensionPNG = ".png";
  //String myFirstImagePathway = upArrow + folders + oldManPortrait + fileExtensionPNG;
  //String mySecondImagePathway = upArrow + folders + bike + fileExtensionJPG;
  //myFirstImage = loadImage( myFirstImagePathway );
  //mySecondImage = loadImage( mySecondImagePathway );
  //int myFirstImageWidth = 2800;
  //int myFirstImageHeight = 3500;
  //int mySecondImageWidth = 860;
  //int mySecondImageHeight = 529;
  //float imageAspectRatioFirst_GreaterOne = ( myFirstImageWidth >= myFirstImageHeight ) ? float(myFirstImageWidth)/float(myFirstImageHeight) : float(myFirstImageHeight)/float(myFirstImageWidth) ; // Choice x / for bigger or smaller
  //float imageAspectRatioSecond_GreaterOne = ( mySecondImageWidth >= mySecondImageHeight ) ? float(mySecondImageWidth)/float(mySecondImageHeight) : float(mySecondImageHeight)/float(mySecondImageWidth) ; // Choice x / for bigger or smaller
  //Boolean imageLandscapeFirst = ( myFirstImageWidth >= myFirstImageHeight ) ? true : false ;
  //Boolean imageLandscapeSecond = ( mySecondImageWidth >= mySecondImageHeight ) ? true : false ;
  ///*Only the image geometry needs to be know for the algorithm below
  // - When the Geometries change, big dimension to small dimension must happen or image will not fit
  // - still need an ERROR-Check with oddly shaped landscape-landscape, protrait-portrait resampling
  // - size-decreasing algorithms (resampling) discussed in Text
  // */
  ////Old Man Image in Image DIV
  //if ( imageLandscapeFirst==true ) {
  //  //imageWidthChanged_First = imageDivWidth;
  //  //imageHeightChanged_First = ( myFirstImageWidth >= imageDivWidth ) ? imageWidthChanged_First/imageAspectRatioFirst_GreaterOne : imageWidthChanged_First*imageAspectRatioFirst_GreaterOne ;
  //  if ( imageHeightChanged_First > imageDivHeight ) { //ERROR Catch
  //    println("First Image Aspect Ratio algorithm Landscape ERROR");
  //    exit();
  //    //noLoop(); //Debugging only
  //  }
  //} else {
  //  imageHeightChanged_First = imageDivHeight;
  //  imageWidthChanged_First = ( myFirstImageHeight >= imageDivHeight ) ? imageHeightChanged_First/imageAspectRatioFirst_GreaterOne : imageHeightChanged_First*imageAspectRatioFirst_GreaterOne ;
  //  if ( imageWidthChanged_First > imageDivWidth ) { //ERROR Catch
  //    println("First Image Aspect Ratio algorithm Portrait ERROR");
  //    exit();
  //    //noLoop(); //Debugging only
  //  }
  //}
  ////Old Man Portrait in Image DIV
  //image( myFirstImage, imageDivX, imageDivY, imageWidthChanged_First, imageHeightChanged_First );
  ////Bike Image in QUIT Button DIV
  //if ( imageLandscapeSecond==true ) {
  //  imageWidthChanged_Second = quitWidth;
  //  imageHeightChanged_Second = ( mySecondImageWidth >= quitWidth ) ? imageWidthChanged_Second/imageAspectRatioSecond_GreaterOne : imageWidthChanged_Second*imageAspectRatioSecond_GreaterOne ;
  //  if ( imageHeightChanged_Second > quitHeight ) { //ERROR Catch
  //    println("Second Image Aspect Ratio algorithm Landscape ERROR");
  //    exit();
  //    //noLoop(); //Debugging only
  //  }
  //} else {
  //  imageHeightChanged_Second = quitHeight;
  //  imageWidthChanged_Second = ( mySecondImageHeight >= quitHeight ) ? imageHeightChanged_Second/imageAspectRatioSecond_GreaterOne : imageHeightChanged_Second*imageAspectRatioSecond_GreaterOne ;
  //  if ( imageWidthChanged_Second > quitWidth ) { //ERROR Catch
  //    println("Second Image Aspect Ratio algorithm Portrait ERROR");
  //    exit();
  //    //noLoop(); //Debugging only
    }
//  }
//  // Bike Image in QUIT Div
//  image( mySecondImage, quitX, quitY, imageWidthChanged_Second, imageHeightChanged_Second );
//  //
//  //Font Size relative to rect(height)
//  float fontSize = 52; //Change the number until it fits, largest font size, int only to ease guessing
//  //
//  /* Aspect Ratio Manipulations (changes to variables)
//   - choose Aspect Ratio that must be mutliplied: fontSize/titleHeight
//   - Rewriting fontSize with formulae
//   */
//     fontSize = fontSize * 0.78;
//   textFont(TitleFont,fontSize);
//// println("step:", textWidth(playListMetaData[currentSong].Title() ),TitleX, TitleY, TitleWidth, TitleHeight, );
//}
////
////code before drawing text

//  //
////Minimum Lines of code to format and draw text with colour
// color SummerMimosas = #C6E3FF;
//  //fill(SummerMimosas);//Ink, hexidecimal copied from Color Selector
//  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//  textFont (TitleFont, fontSize);
//text(Title, TitleX, TitleY, TitleWidth, TitleHeight);
//color white = #FFFFFF;
//fill(white); 
//  //
//  //Font Size Algorithm
//float  CandaraAspectRatio = 1.04; //AR = fontsize ? rect (Height), unique for each font
//fontSize = TitleHeight * CandaraAspectRatio;
//textFont (TitleFont, fontSize);
//println(textWidth(playListMetaData[currentSong].Title() ), TitleWidth ); 
//while (textWidth(playListMetaData[currentSong].Title() ) > TitleWidth ) { 
//   fontSize = fontSize * 0.78;
//   textFont(TitleFont,fontSize);
//// println("step:", textWidth(playListMetaData[currentSong].Title() ),TitleX, TitleY, TitleWidth, TitleHeight, );
////
////
//  //Drawing Text
//  //Option draw ```title```
//  //Decrease Font when wrapped around
//  while ( songTitleDivWidth < textWidth( playListMetaData[currentSong].title() ) ) { //decrease font
//    fontSize *= 0.99; //Assignment Operator  //fontSize = fontSize*0.99;
//    //Update WHILE Conditional with fontSize
//    textFont(appFont, fontSize);
//  } //End Wrap-Around Notification
//  //
//  //Option, drawing ```title``` v playListMetaData[currentSong].title()
//  text(playListMetaData[currentSong].title(), songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
//  color whiteInk = #FFFFFF;
//  fill(whiteInk); //reset
  //
  //Aspect Ratio of Specfic Font, calculations only to be entered in variables above
  //println( "Text Width:", textWidth( playListMetaData[currentSong].title() ), "v rectWidth:", songTitleDivWidth ); //Always smaller or cut off, if text is drawn, always drawn
  //println( "Text Height:", fontSize, "v. rectHeight:", songTitleDivHeight ); //largest fontSize that will be draw, relative to rectHeight
  //println( "Harrington Aspect Ratio ( fontSize/rect(height) ):", fontSize/songTitleDivHeight ); //Remember casting
  //
  //Print What is available on a particular song
  //See Image / Properties / Details
  /* println();
   println( "File Name: " + playListMetaData[currentSong].fileName() );
   println( "Length (in milliseconds): " + playListMetaData[currentSong].length() );
   println( "Title: " + playListMetaData[currentSong].title() );
   println( "Author: " + playListMetaData[currentSong].author() );
   println( "Album: " + playListMetaData[currentSong].album() );
   println( "Date: " + playListMetaData[currentSong].date() );
   println( "Comment: " + playListMetaData[currentSong].comment() );
   println( "Lyrics: " + playListMetaData[currentSong].lyrics() );
   println( "Track: " + playListMetaData[currentSong].track() );
   println( "Genre: " + playListMetaData[currentSong].genre() );
   println( "Copyright: " + playListMetaData[currentSong].copyright() );
   println( "Disc: " + playListMetaData[currentSong].disc() );
   println( "Composer: " + playListMetaData[currentSong].composer() );
   println( "Orchestra: " + playListMetaData[currentSong].orchestra() );
   println( "Publisher: " + playListMetaData[currentSong].publisher() );
   println( "Encoded: " + playListMetaData[currentSong].encoded() );
   */
//  //
//} //End setup
////
//void draw() {
//  //Song title and individual song time data will change, see .mp3 exemplar programs
//  //QUIT Button - Hoverover and activate
//  //QUIT Button - Save the Last Song
//  //HoverOver for all Buttons - Procedures
//} //End draw
////
//void mousePressed() {
//  //QUIT Button to form
//  //Data Structure for: mouseX> && mouseX< && mouseY> && mouseY<
//  if ( mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) {
//    //Procedures: active Saving Program state or last song, prompt a double click for exit()
//    //Use a procedure to access mouse & key board
//    exit();
//  }
//} //End mousePressed
////
//void keyPressed() {
//  /* Key Board Short Cuts ... learning what the Music Buttons could be
//   Note: CAP Lock with ||
//   if ( key==? || key==? ) ; //'' only
//   -
//   if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
//   All Music Player Features are built out of these Minim AudioPlayer() functions
//   .isPlaying()
//   .isMuted()
//   .loop(0), parameter is number of iterations after play
//   .loop(), parameter is infinite interations
//   .play(), parameter is built-in skip (milli-seconds or crystal-time)
//   .pause()
//   .rewind()
//   .skip()
//   .unmute()
//   .mute()
//   -
//   Lesson Music Button Features based on single, double, and spamming taps
//   - Play
//   - Pause
//   - Stop
//   - Loop Once
//   - Loop Infinite
//   - Fast Forward
//   - Fast Rewind
//   - Mute
//   - Next Song
//   - Previous Song
//   - Shuffle
//   -
//   - Advanced Buttons & Combinations
//   - Play-Pause-Stop
//   - Auto Play
//   - Random Song
//   */
//  //if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
//  //
//  if ( key=='P' || key=='p' ) playList[currentSong].loop(0); //Simple Play, double tap possible
//  /* Note: double tap is automatic rewind, no pause
//   Symbol is two triangles
//   This changes what the button might become after it is pressed
//   */
//  if ( key=='O' || key=='o' ) { // Pause
//    //
//    if ( playList[currentSong].isPlaying() ) {
//      playList[currentSong].pause();
//    } else {
//      playList[currentSong].play();
//    }
//  }
//  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
//  //
//  if ( key=='S' | key=='s' ) {
//    if ( playList[currentSong].isPlaying() ) {
//      playList[currentSong].pause(); //single tap
//    } else {
//      playList[currentSong].rewind(); //double tap
//    }
//  }
//  if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
//  if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
//  if ( key=='F' || key=='f' ) playList[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
//  if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
//  if ( key=='W' || key=='w' ) { // MUTE
//    //
//    //MUTE Behaviour: stops electricty to speakers, does not stop file
//    //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
//    //ERROR: if song near end of file, user will not know song is at the end
//    //Known ERROR: once song plays, MUTE acts like it doesn't work
//    if ( playList[currentSong].isMuted() ) {
//      //ERROR: song might not be playing
//      //CATCH: ask .isPlaying() or !.isPlaying()
//      playList[currentSong].unmute();
//    } else {
//      //Possible ERROR: Might rewind the song
//      playList[currentSong].mute();
//    }
//  }
//  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
//  if ( key=='Q' || key=='q' ) exit(); // QUIT
//  //
//  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
//    if ( playList[currentSong].isPlaying() ) {
//      playList[currentSong].pause();
//      playList[currentSong].rewind();
//      //
//      if ( currentSong==numberOfSongs-1 ) {
//        currentSong = 0;
//      } else {
//        currentSong++;
//      }
//      playList[currentSong].play();
//    } else {
//      //
//      playList[currentSong].rewind();
//      //
//      if ( currentSong==numberOfSongs-1 ) {
//        currentSong = 0;
//      } else {
//        currentSong++;
//      }
//      // NEXT will not automatically play the song
//      //song[currentSong].play();
//    }
//  }
//  //if ( key=='P' || key=='p' ) ; // Previous //Students to finish
//  //
//  //if ( key=='S' || key=='s' ) ; // Shuffle - PLAY (Random)
//  //Note: will randomize the currentSong number
//  //Caution: random() is used very often
//  //Question: how does truncating decimals affect returning random() floats
//  /*
//  if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
//   - need to have basic GUI complete first
//   */
//  //
//} //End keyPressed
////
//// End Main Program
