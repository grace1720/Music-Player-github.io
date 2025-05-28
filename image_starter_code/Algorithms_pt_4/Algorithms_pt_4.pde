// Import the Minim sound library
import ddf.minim.*;

// Global Variables
Minim minim;
AudioPlayer[] playList;
int numberOfSongs = 2;
int currentSong = 0;

PFont titleFont;
String titleText = "Grace's Music Player";


// Title box dimensions
float titleX, titleY, titleWidth, titleHeight;
float fontSize;

void setup() {
  // Set up the window size
  size(700, 500);
  
  String PopMusic = "pOp MuZiC/";
  String CryBaby = "CryBaby - SZA"; 
  String PoP Muzik = "Pop Muzik - M";
  String Till the End of Time = "Till the End of Time - Laurindo Almeida";
  String Hell N Back = "Hell N Back - Bakar, feat Summer Walker";

  // Initialize Minim
  minim = new Minim(this);

  // Create the playlist and load one song
  playList = new AudioPlayer[numberOfSongs];
  String songPath = "music/mysong.mp3"; // Make sure this file is in your sketch's "data/music/" folder
  playList[0] = minim.loadFile(songPath);

  // Start playing the song
 // playList[0].play();

  // Set up title area
  titleX = width * 0.25;
  titleY = height * 0.25;
  titleWidth = width * 0.5;
  titleHeight = height * 0.1;

  // Choose a font and size
  fontSize = 32;
  titleFont = createFont("Candara", fontSize);
}

void draw() {
  background(0); // Clear screen with black

  // Draw title box
  fill(100, 150, 255); // Light blue box
  rect(titleX, titleY, titleWidth, titleHeight);

  // Draw title text
  fill(255); // White text
  textAlign(CENTER, CENTER);
  textFont(titleFont, fontSize);
  text(titleText, titleX + titleWidth / 2, titleY + titleHeight / 2);
}

void keyPressed() {
  // Keyboard controls
  if (key == 'p') {
    if (!playList[currentSong].isPlaying()) {
      playList[currentSong].play(); // Play the song
    }
  } else if (key == 's') {
    playList[currentSong].pause(); // Pause the song
  } else if (key == 'r') {
    playList[currentSong].rewind(); // Restart the song
  }
}

void stop() {
  // Stop Minim when the sketch stops
  playList[0].close();
  minim.stop();
  super.stop();
}
