/*
Final project
Name: Saba Aafreen 
Student ID: 217945825

NOTE: there is a short latency at the beginning as the sound file is large. 
Please wait for a few moments for the graphics to render. Thank you and enjoy!

Project name: Calm Ocean Audio Player --> mimicing apps like Spotify where you can skip 
to different sounds by clicking on the buttons

Description: Using the concepts of Object Oriented programming, interactive, 
if else logic, and geometry, I have implemented four squares in the center of the screen 
that will each jump to a certain time of the audio file to 
play a different sound of the ocean and its environment when clicked and 
stop when another square is clicked. If the user doesn't click on any box after they clicked the 
previous one then the audio file will continue to play the whole file. When a square is clicked it will 
change colour to show that it is "active" and playing the music. 
*/


import processing.sound.*;
import gifAnimation.*;
Gif bg; //background image is a gif

Button sq1;
Button sq2;
Button sq3;
Button sq4;

SoundFile ocean;
SoundFile whale;
SoundFile seagull;
SoundFile horn;
SoundFile sound;

void setup(){
  size(700, 700);
  background(0);
  bg = new Gif(this, "luminate.gif"); //luminescent beach
  bg.play();
  
  sound = new SoundFile(this, "music.mp3", false);
  
  mouseReleased();
  
  
  sq1 = new Button(width/3, height/3, 100, 100, color(247, 80,153));
  sq2 = new Button(width/2 +20, height/3 , 100, 100, color(124, 146,255));
  sq3 = new Button(width/3, height/2 + 20, 100, 100, color(130, 196,147));
  sq4 = new Button(width/2 +20, height/2 +20, 100, 100, color(178, 102,255));
  
}
void draw(){
  image(bg, 0,0, 700, 700);
  
 
  sq1.drawRect();
  sq2.drawRect();
  sq3.drawRect();
  sq4.drawRect();
 

 
}


void mouseReleased(){
  if ( dist(width/3 +30, height/3 + 30, mouseX, mouseY) < 50){
    cursor(HAND);
    sq1.activeButton();
    sq1.playMusic1(sound);
    
    
  }
  if ( dist(width/2 +20 +30, height/3 +30, mouseX, mouseY) < 50){
    cursor(HAND);
    sq2.activeButton();
    sq2.playMusic2(sound);
    
  }
  
  else if (dist(width/3 +30, height/2 + 20 +30, mouseX, mouseY) < 50){
    cursor(HAND);
    sq3.activeButton();
    sq3.playMusic3(sound);
   
    
  }
  else if(dist(width/2 +20 +30, height/2 +20 +30, mouseX, mouseY) < 50){
    cursor(HAND);
    sq4.activeButton();
    sq4.playMusic4(sound);
   
  }
}


class Button{
 
  float x; //x position of square
  float y; //y position of square
  int colour; //colour of each square 
  float w; //width of square
  float h; //height of square
  SoundFile music; //the unique music for each shape
  
  
  Button(float x, float y, float w, float h, int colour){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.colour = colour;
  }
 
  void drawRect(){
      noStroke();
      fill(colour);
      rect(x,y,w,h);
  }
  
  void playMusic1(SoundFile music){//plays ocean sound
    this.music = music;
    music.jump(0.0);
   
    
  }
  void playMusic2(SoundFile music){//plays seagulls sound
    this.music = music;
    music.jump(24.6);
    music.duration();
    
    
  }
   void playMusic3(SoundFile music){//plays boat horn sound
    this.music = music;
    music.jump(70.7);
    music.duration();
   
    
  }
   void playMusic4(SoundFile music){//plays whale sound 
    this.music = music;
    music.jump(111.2);
     music.duration();
  }
  void activeButton(){
      noStroke();
      fill(0);
      rect(x,y,w,h);  
    
  }
  
  
  
  void isplaying(){
    music.isPlaying();
  }
 
}



