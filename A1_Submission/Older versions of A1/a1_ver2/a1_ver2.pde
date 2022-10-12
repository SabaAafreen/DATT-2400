PVector p,p2,p3; //position
PVector a; //acceleration 

void setup(){
  size(600, 600);
  background(0);
  fill(227,14,216); //fuchsia
  
  p = new PVector(random(width), random(height), random(10,90));
 // p2 = new PVector(random(width), random(height), random(10,90));
  //p3 = new PVector(random(width), random(height), random(10,90));
 // p = new PVector(width/2, height/2, random(10, 100));
  a = new PVector(random(sin(-10),10), random(sin(-10), 10), 0.0);
  
  noStroke();
}

void draw(){
 // translate(width/2, height/2);
 p.add(a);
 
 if( (p.x>width) || (p.x <0)){
   a.x = a.x * -1;
   
   fill(227,14,216);  
   if(p.x>width/2){
     fill(#11FF00); 
   }
 }
/* if( (p2.x>width) || (p2.x <0)){
   a.x = a.x * -1;
   
   fill(227,14,216);  
   if(p2.x>width/2){
     fill(#11FF00); 
   }
 }
 if( (p3.x>width) || (p3.x <0)){
   a.x = a.x * -1;
   
   fill(227,14,216);  
   if(p3.x>width/2){
     fill(#11FF00); 
   }
 }*/
  if((p.y>height) || (p.y<0)){
   a.y = a.y * -1;
   fill(#4700FF);//deep blue
   if(p.y>height/2){
     fill(#FFEB3B); //yellow
   }
   
 }
 /* if((p2.y>height) || (p2.y<0)){
   a.y = a.y * -1;
   fill(#4700FF);//deep blue
   if(p2.y>height/2){
     fill(#FFEB3B); //yellow
   }
   
 } if((p3.y>height) || (p3.y<0)){
   a.y = a.y * -1;
   fill(#4700FF);//deep blue
   if(p3.y>height/2){
     fill(#FFEB3B); //yellow
   }
   
 }*/
 /* if( (p.z >600) || (p.z < 0)){
   a.z =a.z * -1;
   fill(#11FF00); //neon green
 }
 */
 
 
 ellipse(p.x, p.y, p.z, p.z);
/* ellipse(p2.x, p2.y, p2.z, p2.z);
 ellipse(p3.x, p3.y, p3.z, p3.z);*/
 
}
void mousePressed(){
  setup();
}
