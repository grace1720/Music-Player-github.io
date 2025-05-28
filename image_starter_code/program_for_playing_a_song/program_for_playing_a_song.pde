;
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
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
//
void setup() {
  //Display
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String musicPathway = "pOp MuZiC/";
  String Crybaby = "Crybaby - SZA.mp3";
  String PoPMuzik = "Pop Muzik - M, Robin Scott.mp3";
  String  HellNBack = "Hell N Back - Bakar (feat Summer Walker).mp3";
  String Tilltheendoftime = "Till the end of time - Laurindo Almeieda.mp3";
  String LamoreDiceCiao = "Lamore dice ciao - Armando Trovajoli.mp3";
  String fileExtension_mp3 = ".mp3";
add a music dircetory 
 
 currentSong++;
  file = musicDirectory + c + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + eureka + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + ghostWalk + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + groove + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + newsroom + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + startYourEngines + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicDirectory + theSimplest + fileExtension_mp3; //relative pathway or directory
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
  appFont = createFont ("Harrington", appShortSide); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug, cannot mix loadFont() and createFont()
  //
  
  //
  String musicDirectory = "../../../../" + musicPathway ;
  String file = musicDirectory  + fileExtension_mp3; //relative pathway or directory
  println( file );
  //Create a FOR loop to loadFile() a changing songName
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //Music Testing
  //playList[currentSong].play();
  //
  //
  musicMenuX = appWidth*1/4;
  musicMenuY = appHeight*1/4;
  musicMenuWidth = appWidth*1/2;
  musicMenuHeight = appHeight*1/2;
  //
  //rect(X, Y Width, Height);
  rect(musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight);
  //
} //End setup
//
void draw() {} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ; //'' only
   - 
   if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
   All Music Player Features are built out of these Minim AudioPlayer() functions
   .isPlaying()
   .isMuted()
   .loop(0), parameter is number of iterations after play
   .loop(), parameter is infinite interations
   .play(), parameter is built-in skip (milli-seconds or crystal-time)
   .pause()
   .rewind()
   .skip()
   .unmute()
   .mute()
   - 
   Lesson Music Button Features based on single, double, and spamming taps
   - Play
   - Pause
   - Stop
   - Loop Once
   - Loop Infinite
   - Fast Forward
   - Fast Rewind
   - Mute
   - Next Song
   - Previous Song
   - Shuffle
   - 
   - Advanced Buttons & Combinations
   - Play-Pause-Stop
   - Auto Play
   - Random Song
   */
} //End keyPressed
//
// End Main Program
