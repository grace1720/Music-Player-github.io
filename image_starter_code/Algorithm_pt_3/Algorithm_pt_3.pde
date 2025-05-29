import ddf.minim.*;

Minim minim;
AudioPlayer[] playList;
String[] songFiles = {
  "Crybaby - SZA.mp3",
  "Hell N Back - Bakar ( Feat Summer Walker).mp3",
  "Lamore Dice Ciao - Armando Travjoli.mp3",
  "Pop Muzik - M, Robin Scott.mp3",
  "Till The End Of Time - Laurindo Almedia.mp3"
};
int numberOfSongs = 5;
int currentSong = 0;
boolean isMuted = false;
float volumeBeforeMute = 0;

// UI variables
PFont titleFont;
String title = "Grace's Music Player";
float fontSize = 36;

void setup() {
  size(800, 600);
  background(200);

  // Setup Minim and Playlist
  minim = new Minim(this);
  playList = new AudioPlayer[numberOfSongs];
  for (int i = 0; i < numberOfSongs; i++) {
    playList[i] = minim.loadFile(songFiles[i]);
  }

  titleFont = createFont("Candara", fontSize);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(198, 227, 255);
  fill(0);
  textFont(titleFont, fontSize);
  text(title, width/2, 50);

  // Show current song name
  fill(50);
  textSize(26);
  text(songFiles[currentSong], width/2, height/2);
  textSize(20);
  String status = playList[currentSong].isPlaying() ? "Playing" : "Paused/Stopped";
  if (playList[currentSong].loopCount() == -1) {
    status += " (Looping infinitely)";
  } else if (playList[currentSong].loopCount() > 0) {
    status += " (Looping " + playList[currentSong].loopCount() + " more)";
  }
  if (isMuted) status += " (Muted)";
  text(status, width/2, height/2 + 40);

  // Instructions
  textSize(16);
  fill(80);
  text("Space: Play/Pause | s: Stop | ←: Rewind | →: Fast Forward | n: Next | p: Previous | r: Shuffle", width/2, height - 90);
  text("1: Loop Once | l: Loop Infinite | m: Mute | u: Unmute | q: Quit", width/2, height - 65);
}

void keyPressed() {
  AudioPlayer player = playList[currentSong];

  switch(key) {
    case ' ': // Play/Pause
      if (player.isPlaying()) player.pause();
      else player.play();
      break;
    case 's': // Stop
    case 'S':
      player.pause();
      player.rewind();
      break;
    case 'n': // Next
    case 'N':
      nextSong();
      break;
    case 'p': // Previous
    case 'P':
      previousSong();
      break;
    case 'r': // Shuffle
    case 'R':
      shuffleSong();
      break;
    case 'm': // Mute
    case 'M':
      if (!isMuted) {
        volumeBeforeMute = player.getGain();
        player.setGain(-80); // effectively mute
        isMuted = true;
      }
      break;
    case 'u': // Unmute
    case 'U':
      if (isMuted) {
        player.setGain(volumeBeforeMute);
        isMuted = false;
      }
      break;
    case '1': // Loop once
      player.loop(1);
      break;
    case 'l': // Loop infinitely
    case 'L':
      player.loop();
      break;
    case 'q': // Quit
    case 'Q':
      exit();
      break;
  }
  // Fast Forward and Rewind with arrow keys
  if (keyCode == RIGHT) {
    player.skip(5000); // skip 5 seconds forward
  }
  if (keyCode == LEFT) {
    player.skip(-5000); // skip 5 seconds backward
  }
}

void nextSong() {
  playList[currentSong].pause();
  playList[currentSong].rewind();
  currentSong = (currentSong + 1) % numberOfSongs;
  playList[currentSong].rewind();
  playList[currentSong].play();
  isMuted = false;
}

void previousSong() {
  playList[currentSong].pause();
  playList[currentSong].rewind();
  currentSong = (currentSong - 1 + numberOfSongs) % numberOfSongs;
  playList[currentSong].rewind();
  playList[currentSong].play();
  isMuted = false;
}

void shuffleSong() {
  playList[currentSong].pause();
  playList[currentSong].rewind();
  int nextSong = currentSong;
  while (nextSong == currentSong) {
    nextSong = int(random(numberOfSongs));
  }
  currentSong = nextSong;
  playList[currentSong].rewind();
  playList[currentSong].play();
  isMuted = false;
}

void stop() {
  for (int i = 0; i < numberOfSongs; i++) {
    playList[i].close();
  }
  minim.stop();
  super.stop();
}
