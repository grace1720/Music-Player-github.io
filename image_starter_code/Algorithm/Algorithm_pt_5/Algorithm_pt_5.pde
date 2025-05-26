//void setup() {
  //Display
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
//Minim minim
int numberOfSongs = 5; 
//AudioPlayer [] playlist = new Audio player [ numberOfSongs];
AudioMetaData [] playlistMetaData = new AudioMetaData[ numberOfSongs];
int ////////////////////////////////////////////////////////////////////////////
PFont appFont;
Float fontSize;
String Title = "Grace's Music Player";
//
float TitleX, TitleY, TitleWidth, TitleHeight;
void setup() {
  \
//Display
//fullscreen();
size(700, 500);
int appWidth = width; 
int appHeight = height;
int shorterSide = ( appWidth >= appHeight) ? appHeight : appWidth ; // Landscape, Portrait, & Square
//
minim = new Minim (this);
string musicPathway = "pOp MuZiC/";
string song = "songname";
string fileExtension_mp3 = ",mp3"
string file = musicDirectly + song + fileExtension 

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////






































}
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
  playList[song4.mp3].pause();
  playList[song4.mp3].rewind();
  currentSong = (song4.mp3 + 1) % totalSongs;
  playList[song4.mp3].play();
}

void previousSong() {
  playList[song5.mp3].pause();
  playList[song5.mp3].rewind();
  currentSong = (song5.mp3 - 1 + totalSongs) % totalSongs;
  playList[song5.mp3].play();
}
boolean mouseOverButton(float x, float y) {
  return mouseX > x && mouseX < x + buttonWidth && mouseY > y && mouseY < y + buttonHeight;
}

void togglePlay() {
  if (playList[song1.mp3].isPlaying()) {
    playList[song1.mp3].pause();
  } else {
    playList[song1.mp3].play();
  }
}

void nextSong() {
  playList[song2.mp3].pause();
  playList[song2.mp3].rewind();
  currentSong = (song2.mp3 + 1) % totalSongs;
  playList[song2.mp3].play();
}

void previousSong() {
  playList[song3.mp3].pause();
  playList[song.mp3].rewind();
  currentSong = (currentSong - 1 + totalSongs) % totalSongs;
  playList[song3.mp3].play();
}

//
//
} //End Setup
//
//void draw() {
  // EMPTY Draw
} // End Draw
//
void mousePressed() {} //End Mouse Pressed 
//
void keyPressed() {} // End Key Pressed
//
//END of Main 
