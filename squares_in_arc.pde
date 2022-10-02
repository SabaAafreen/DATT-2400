//Author: Saba Aafreen 
//This art piece is created by using Processing. There are circles and squares rotating in an arc path and change colours as they rotate. 


void setup(){
  size (600, 600);
  background(0);
  rectMode(CENTER);
  frameCount = 5;
  frameRate(5);
}
void draw(){
  
  float r = random(155);
  float g = random(59);
  float b = random(128); 
    r += 2;
    g +=2 ;
    b +=2;
    
     noFill();
    stroke(r,g,b);
     translate(width/5, height/5);
     
     
  for (int i=0; i<50; i++){
   
    rotate(random(sin(frameCount)));
    rect(width/1.5, height/2, 90,90);
  
    ellipse(width/3, height/2, 95,95);
    
    rotate(random(sin(frameCount)));
   
    rect(width/4, height/3.7, 90,90);
 
     rotate(random(sin(frameCount)));
   
    ellipse(width/8, height/6, 20,20);
    
 
      
}
}
