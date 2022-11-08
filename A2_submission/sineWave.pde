/*
Assignment 2
Author: Saba Aafreen 
Description: Using object oriented method, my program creates sine waves 
of different x and y positions, colours, wave widths, heights, and speeds 
*/

SineWave sw1;
SineWave sw2;
SineWave sw3;
SineWave sw4;
SineWave sw5;
SineWave sw6;
SineWave sw7;


void setup(){
   background(0);
   size(700,700);
 
   //create SineWave object instances:
   sw1 = new SineWave(0, 70, 70, 30, 5,  color(247, 80,153));
   sw2 = new SineWave(0, 140, 55, 60, 3,  color(17, 85,153));
   sw3 = new SineWave(0, 240, 20, 35, 8,  color(105, 70, 10));
   sw4 = new SineWave(0, 340, 55, 50, 3,  color(54, 80,153));
   sw5 = new SineWave(0, 440, 90, 45, 1,  color(235, 85,10));
   sw6 = new SineWave(0, 540, 6, 35, 6,  color(27, 80,103));
   sw7 = new SineWave(0, 640, 55, 60, 7,  color(256, 85,103));
  
  
}
void draw(){
  //call drawWave method to draw the sine waves :
  sw1.drawWave();
  sw2.drawWave();
  sw3.drawWave();
  sw4.drawWave();
  sw5.drawWave();
  sw6.drawWave();
  sw7.drawWave();
  
  //if the x coordinate fo all waves reach beyond the screen then restart drawing the waves:
  if (sw1.x >= width && sw2.x>=width && sw3.x>=width && sw4.x>=width && sw5.x>=width && sw6.x>=width && sw7.x>=width){
       background(0);
       sw1.x=0;
       sw2.x=0;
       sw3.x=0;
       sw4.x=0;
       sw5.x=0;
       sw6.x=0;
       sw7.x=0;
      
     }
  saveFrame("####.jpg");
}
class SineWave{
  float x; //x position of point 
  float y; //y position of point
  int colour; //define colour
  float speed; //customize speed of wave
  float h; //determien height of wave
  float w; //determine width of wave
  
  //constructor:
  SineWave(float x, float y, float h, float w, float speed, int colour){
    this.x = x;
    this.y = y ;
    this.colour = colour;
    this.speed = speed;
    this.h = h;
    this.w = w;
    
  }
  void drawWave(){
     noStroke();
     fill(colour);
    
     for (float i=0; i<150; i++){
       circle(x,y+h*sin(x/w), i/15);
     }
     x= x+speed; //increment the speed
     
   
  }
}




