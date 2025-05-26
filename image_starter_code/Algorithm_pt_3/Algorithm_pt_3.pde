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
int numberOfSongs = 5; //Best Practice
//int numberOfSoundEffects = ???
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
//AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects ];
int currentSong = numberOfSongs - numberOfSongs; //FIVE
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
  String musicAll = "Music All/";
  String song1.mp3 = "song1.mp3";
  String song2.mp3 = "song2.mp3";
  String song3.mp3 = "song3.mp3";
  String song4.mp3 = "song4.mp3";
  String song5.mp3 = "song5.mp3";
  String fileExtension_mp3 = ".mp3"; 

    
  //Note: Download music and sound effects, then design your player with images, text, and 2D shapes
  //See Google Search: Atari pong logo free image download

  //Add all files, CS20 Review is special OS Java Library
  //Including the reading of the number of files in the array
  //
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
float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
//
//void setup() {
  //Display
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
//Minim minim
int numberOfSongs = 1; 
AudioPlayer [] playlist = new Audio player [ numberOfSongs];
AudioMetaData [] playlistMetaData = new AudioMetaData[ numbeerOfSongs];
PFont appFont;
Float fontSize;
String Title = "Grace's Music Player";
//
float TitleX, TitleY, TitleWidth, TitleHeight;
void setup() {
  
//Display
//fullscreen();
size(700, 500);
int appWidth = width; 
int appHeight = height;
int shorterSide = ( appWidth >= appHeight) ? appHeight : appWidth ; // Landscape, Portrait, & Square
//
minim = new Minim (this);
string musicPathway = "music/";
string song = "song1.mp3";
string fileExtension_mp3 = ",mp3"
string file = musicDirectly + song + fileExtension 







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
// println("step:", textWidth(playListMetaData[currentSong].Title() ),TitleX, TitleY, TitleWidth, TitleHeight, );
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




// Import Minim Library
import ddf.minim.*;

Minim minim;
AudioPlayer[] playList;
int currentSong = song1.mp3;
int totalSongs = 5; // Change this to match how many songs you have

// Button positions
float playButtonX, playButtonY, buttonWidth, buttonHeight;
float nextButtonX, prevButtonX;

void setup() {
  size(600, 400);
  background(200);
  textSize(20);
  
  // Setup Minim and load songs
  minim = new Minim(this);
  playList = new AudioPlayer[totalSongs];

  for (int i = 0; i < totalSongs; i++) {
    playList[i] = minim.loadFile("Music/song" + (i+1) + ".mp3");
  }

  // Set up button positions
  buttonWidth = 100;
  buttonHeight = 40;
  playButtonX = width/2 - buttonWidth/2;
  playButtonY = height - 80;

  prevButtonX = playButtonX - 120;
  nextButtonX = playButtonX + 120;
}

void draw() {
  background(220);
  fill(0);

  // Show current song
  textAlign(CENTER);
  text("Now Playing: song" + (currentSong + 1), width/2, 50);

  // Draw buttons
  drawButton(prevButtonX, playButtonY, "Prev");
  drawButton(playButtonX, playButtonY, "Play/Pause");
  drawButton(nextButtonX, playButtonY, "Next");
}

void drawButton(float x, float y, String label) {
  fill(255);
  rect(x, y, buttonWidth, buttonHeight);
  fill(0);
  text(label, x + buttonWidth/2, y + buttonHeight/2 + 5);
}

// Mouse interaction
void mousePressed() {
  if (mouseOverButton(playButtonX, playButtonY)) {
    togglePlay();
  } else if (mouseOverButton(nextButtonX, playButtonY)) {
    nextSong();
  } else if (mouseOverButton(prevButtonX, playButtonY)) {
    previousSong();
  }
}

boolean mouseOverButton(float x, float y) {
  return mouseX > x && mouseX < x + buttonWidth && mouseY > y && mouseY < y + buttonHeight;
}

void togglePlay() {
  if (playList[currentSong].isPlaying()) {
    playList[currentSong].pause();
  } else {
    playList[currentSong].play();
  }
}

void nextSong() {
  playList[currentSong].pause();
  playList[currentSong].rewind();
  currentSong = (currentSong + 1) % totalSongs;
  playList[currentSong].play();
}

void previousSong() {
  playList[currentSong].pause();
  playList[currentSong].rewind();
  currentSong = (currentSong - 1 + totalSongs) % totalSongs;
  playList[currentSong].play();
}
