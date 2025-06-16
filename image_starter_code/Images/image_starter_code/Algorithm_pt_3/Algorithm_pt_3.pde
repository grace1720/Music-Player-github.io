//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
 //
//Global Variables
//Minim minim//initates entire class
int numberOfSongs = 1; //Best Practice
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
size(700, 500);
int appWidth = width; 
int appHeight = height;
int shorterSide = ( appWidth >= appHeight) ? appHeight : appWidth ; // Landscape, Portrait, & Square
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String musicPathway = "Music Pong/";
  String musicPong = "Music Pong/";
  String musicAll = "Music All/";
  //Note: Download music and sound effects, then design your player with images, text, and 2D shapes
  //See Google Search: Atari pong logo free image download
  String pongWorld = "Pong World";
  //Add all files, CS20 Review is special OS Java Library
  //Including the reading of the number of files in the array
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = "../../../../" + musicPathway + musicPong;
  String file = musicDirectory + pongWorld + fileExtension_mp3; //relative pathway or directory
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
float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
  //
//Minim minim
int numberOfSongs = 1; 
//AudioPlayer [] playlist = new Audio player [NumberOfSongs]
AudioMetaData [] playlistMetaData = new AudioMetaData[ numberOfSongs]
//int numberofSongs
PFont appFont;
Float fontSize;
String Title = "Grace's Music Player";
//
float TitleX, TitleY, TitleWidth, TitleHeight;
//
minim = new Minim (this);
String musicPathway = "music/";
String song = "Crybaby - SZA";
String fileExtension_mp3 = ",mp3"
String file = musicDirectly + song + fileExtension 

/*Fonts from OS
println ("Start of Console");
String[] fontList = PFont.list();
printArray(fontList);
*/

float fontSize = shorterSide;
PFont TitleFont = createFont("Candara", fontSize);


//Tools / Create Font / Find Font / Do Not Press "OK", known bug (not loadFont () )
//

//population
float TitleX, TitleY, TitleWidth, TitleHeight;
TitleX  = appWidth*1/4;
TitleY = appHeight*1/4;
TitleWidth = appWidth*1/2;
TitleHeight = appHeight*1/10;
//DIVs
rect(TitleX, TitleY, TitleWidth, TitleHeight);
 
 //
//Font Size Algorithm
float  CandaraAspectRatio = 1.04; //AR = fontsize ? rect (Height), unique for each font
fontSize = TitleHeight * CandaraAspectRatio;
textFont (TitleFont, fontSize);
println(textWidth(playListMetaData[currentSong].Title() ), TitleWidth ); 
while (textWidth(playListMetaData[currentSong].Title() ) > TitleWidth ) { 
   fontSize = fontSize * 0.78;
   textFont(TitleFont,fontSize);
  // println("step:", textWidth(playListMetaData[currentSong].Title() ),TitleX, TitleY, TitleWidth, TitleHeight,);
}
//
//code before drawing text
color SummerMimosas = #C6E3FF;
fill(SummerMimosas); 
textAlign (CENTER,CENTER);
//Values: [ LEFT | CENTER| RIGHT] & [ TOP | CENTER | BOTTOM | BASELINE]
textFont (TitleFont, fontSize);
text(Title, TitleX, TitleY, TitleWidth, TitleHeight);
color white = #FFFFFF;
fill(white);
//
} //End Setup
//
void draw () {
  // EMPTY Draw
} // End Draw
//
void mousePressed() {} //End Mouse Pressed 
//
void keyPressed() {} // End Key Pressed
//
//END of Main 
