/*
Author: Saba Aafreen 
Assignment 1
NOTE: star function borrowed from Processing.org references website, link: https://processing.org/examples/star.html
Description: The program outputs many stars that rotate and multiply to resemble a galaxy. The stars change colour everytime.
The program continues to build up stars on the screen unless the user clicks the mouse on the screen
and if that occurs, a new blank canvas appears and repeats the process of creating stars again. 
*/

PVector p; //position
PVector a; //acceleration 

void setup(){
  size(700, 700);
  
  fill(#FF0ED8); //fuchsia
  
  //set position and acceleration:
  p = new PVector(random(width/2), random(height/2), 10); 
  a = new PVector(random(-10,10), random(-10, 10), 0.0);
 
  background(0);//bakcground is set to black
  noStroke();
}

void draw(){
 
   p.add(a); //position added to accelration vector 
 
  //checks to see if the stars go out of the screen max width and height: 
  //also colours of the stars change as they "hit" the edge of the screen and makes 
  //it look like a new set of coloured stars are building up on the old ones and process repeats
   if( (p.x>width) || (p.x <0)){
     a.x = a.x * -1;
     fill(#FF0ED8); //fuchsia
  
     if(p.x>width/2){
       fill(0);//black
     }
   }
  
   if((p.y>height) || (p.y<0)){
     a.y = a.y * -1;
     fill(#4700FF);//deep blue
     
     if(p.y >height/4){
        fill(#AB0EFF);// purple
     }
   }
     
   
    //stars are drawn: 
    for(int i=0; i<0.9; i++){
     pushMatrix();
     translate(random(width), random(height));
     rotate(sin(frameCount/300));
     star(i,i,sin(100),100,20);
     popMatrix();
    
     pushMatrix();
     translate(random(width), random(height));
     rotate(frameCount/300);
     star(i,i,sin(100),100,15);
     popMatrix();
     
     pushMatrix();
     translate(random(width), random(height));
     rotate(frameCount/300);
     star(i,i,sin(100),100,10);
     popMatrix();
    }
   
    saveFrame("####_out.png");

 
}
void mousePressed(){//if user clicks on screen then new canvas is made with setup() and process repeats
  setup();
}

//star function code taken from Processing.org references: 
//link: https://processing.org/examples/star.html 
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
