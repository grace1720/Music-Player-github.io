//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//Minim minim
Float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
//
void setup() {
  //Display
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  Minim minim;
  int numberOfSongs = 3;
  AudioPlayer [] playlist = new AudioPlayer [ numberOfSongs];
  AudioMetaData [] playlistMetaData = new AudioMetaData[ numberOfSongs];

  PFont appFont;
  Float fontSize;
  String Title = "Grace's Music Player";
  //
  float TitleX, TitleY, TitleWidth, TitleHeight;
  //void setup() }

  //Display
  //fullscreen();
  size(700, 500);
  int shorterSide = ( appWidth >= appHeight) ? appHeight : appWidth; // Landscape, Portrait, & Square
  //
  minim = new Minim (this);
  String musicPathway = "pOp MuZiC/";
  String Tilltheendoftime = "Till the end of time - Laurindo Almedia.mp3";
  String LamoreDiceCiao = "Lamore Dice Ciao - Armando Trovajoli.mp3";
  String Crybaby = "Crybaby - SZA.mp3";
  String PopMuzik = "Pop Muzik - M, Robin Scott.mp3";
  String HellNBack = "HellNBack - Bakar(feat Summer Walker).mp3";
  String fileExtension_mp3 = ",mp3";
  String file = musicPathway + Tilltheendoftime + fileExtension;
  //

  currentSong=0;
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicPathway + Tilltheendoftime + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicPathway + lamoreDiceCiao + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicPathway + Crybaby + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicPathway + HellNBack + fileExtension_mp3; //relative pathway or directory
  playList[ currentSong ] = minim.loadFile( file ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  playListMetaData[currentSong] = playList[currentSong].getMetaData();
  //
  currentSong++;
  file = musicPathway + PopMuzik + fileExtension_mp3; //relative pathway or directory
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

   
  /*Fonts from OS
   println ("Start of Console");
   String[] fontList = PFont.list();
   printArray(fontList);
   */  ;
  Float fontSize = shorterSide;
  PFont TitleFont = createFont("Candara", fontSize);


  //Tools / Create Font / Find Font / Do Not Press "OK", known bug (not loadFont () )
  //

  //population
  TitleX  = appWidth*1/4;
  TitleY = appHeight*1/4;
  TitleWidth = appWidth*1/2;
  TitleHeight = appHeight*1/10;
  //DIVs
  rect(TitleX, TitleY, TitleWidth, TitleHeight);

  //
  //Font Size Algorithm
  Float  CandaraAspectRatio = 1.04; //AR = fontsize ? rect (Height), unique for each font
  fontSize = TitleHeight * CandaraAspectRatio;
  textFont (TitleFont, fontSize);
  println(textWidth(playListMetaData[currentSong].Title() ), TitleWidth );
  // while (textWidth(playListMetaData[currentSong].Title() ) > TitleWidth ); {
  fontSize = fontSize * 0.78;
  textFont(TitleFont, fontSize);
  //println("step:", textWidth(playListMetaData[currentSong].Title() ), TitleX, TitleY, TitleWidth, TitleHeight, );

  //
  //code before drawing text
  color SummerMimosas = #C6E3FF;
  textAlign (CENTER, CENTER);
  //Values: [ LEFT | CENTER| RIGHT] & [ TOP | CENTER | BOTTOM | BASELINE]
  textFont (TitleFont, fontSize);
  text(Title, TitleX, TitleY, TitleWidth, TitleHeight);
  color white = #FFFFFF;
  fill(white);
  //

} //End Setup
  //
 void draw () {
} // End Draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} // End Key Pressed
//
//END of Main
