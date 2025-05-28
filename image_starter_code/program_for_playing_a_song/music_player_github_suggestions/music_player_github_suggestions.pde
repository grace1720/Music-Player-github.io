import ddf.minim.*;

Minim minim;
AudioPlayer[] playList;
String[] songFiles = {
  "pOp MuZiC/Crybaby - SZA.mp3",
  "pOp MuZiC/Lamore dice ciao - Armando Travjoil.mp3",
  "pOp MuZiC/Hell N Back - Bakar ( Feat Summer Walker).mp3",
  "pOp MuZiC/Pop Muzik - M, Robin Scott.mp3",
  "pOp MuZiC/Till The End Of Time - Laurindo Almedia.mp3"
};
String[] songNames = {
  "Crybaby",
  "Lamore dice ciao",
  "Hell N Back",
  "Pop Muzik",
  "Till The End Of Time"
};
int totalSongs = songFiles.length;
int currentSong = 0;

// Button positions
float playButtonX, playButtonY, buttonWidth, buttonHeight;
float nextButtonX, prevButtonX;

void setup() {
  size(600, 400);
  background(200);
  textSize(20);

  minim = new Minim(this);
  playList = new AudioPlayer[totalSongs];

  for (int i = 0; i < totalSongs; i++) {
    playList[i] = minim.loadFile(songFiles[i]);
  }

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

  // Show current song name instead of generic
  textAlign(CENTER);
  text("Now Playing: " + songNames[currentSong], width/2, 50);

  drawButton(prevButtonX, playButtonY, "Prev");
  drawButton(playButtonX, playButtonY, "Play/Pause");
  drawButton(nextButtonX, playButtonY, "Next");
}

void drawButton(float x, float y, String label) {
  fill(255);
  rect(x, y, buttonWidth, buttonHeight, 10);
  fill(0);
  text(label, x + buttonWidth/2, y + buttonHeight/2 + 5);
}

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
    if (playList[currentSong].position() == playList[currentSong].length()) {
      playList[currentSong].rewind();
    }
    playList[currentSong].play();
  }
}

void nextSong() {
  playList[currentSong].pause();
  playList[currentSong].rewind();
  currentSong = (currentSong + 1) % totalSongs;
  playList[currentSong].rewind();
  playList[currentSong].play();
}

void previousSong() {
  playList[currentSong].pause();
  playList[currentSong].rewind();
  currentSong = (currentSong - 1 + totalSongs) % totalSongs;
  playList[currentSong].rewind();
  playList[currentSong].play();
}

void stop() {
  for (int i = 0; i < totalSongs; i++) {
    playList[i].close();
  }
  minim.stop();
  super.stop();
}
