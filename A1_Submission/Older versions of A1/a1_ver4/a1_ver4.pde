PVector p; //position
PVector a; //acceleration 

void setup(){
  size(600, 600);
  background(0);
  fill(227,14,216); //fuchsia
  
 
 
  p = new PVector(width/2, height/2, 5); 
// p = new PVector(CENTER, CENTER, 3); 

  a = new PVector(random(-10,10), random(-10, 10), 0.0);
 
  noStroke();
}

void draw(){

 p.add(a);
 
 if( (p.x>width) || (p.x <0)){
   a.x = a.x * -1;
   
  fill(227,14,216);  

   if(p.x>width/2){
     fill(#11FF00); //neon green
   }
 }

  if((p.y>height) || (p.y<0)){
   a.y = a.y * -1;
   fill(#4700FF);//deep blue
   if(p.y>height/2){
     fill(#FFEB3B); //yellow
   }
   
 }
 

 
 
 ellipse(p.x, p.y, p.z, p.z);
 ellipse(p.x*2, p.y*2, p.z*2, p.z*2);
 ellipse(p.x*4, p.y *4, p.z*4, p.z*4);
  ellipse(p.x*5, p.y *5, p.z*5, p.z*5);
  
 
 
}
void mousePressed(){
  setup();
}
