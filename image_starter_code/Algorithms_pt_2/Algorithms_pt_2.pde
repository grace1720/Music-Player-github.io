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
float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
//
void setup() {
  //Display
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  //
  //Minim minim
  int numberOfSongs = 1;
  AudioPlayer [] playlist = new Audio player [ numberOfSongs]
    AudioMetaData [] playlistMetaData = new AudioMetaData[ numbeerOfSongs]
    int ////////////////////////////////////////////////////////////////////////////
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
    string song = "songnameinserthere";
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
      textFont(TitleFont, fontSize);
      println("step:", textWidth(playListMetaData[currentSong].Title() ), TitleX, TitleY, TitleWidth, TitleHeight, );
    }
    //
    //code before drawing text
    color SummerMimosas = #C6E3FF;
    fill(SummerMimosas);
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
    // EMPTY Draw
  } // End Draw
  //
  void mousePressed() {
  } //End Mouse Pressed
  //
  void keyPressed() {
  } // End Key Pressed
  //
  //END of Main
