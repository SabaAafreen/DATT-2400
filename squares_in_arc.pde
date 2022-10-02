void setup(){
  size (600, 600);
  background(0);
  rectMode(CENTER);
  frameCount = 5;
  frameRate(5);
}
void draw(){
  
  float r = random(100, 210);
  float g = random(50, 180);
  float b = random(20, 50);

  
    
    r ++;
    g ++ ;
    b ++ ;
    
     noFill();
    stroke(r,g,b);
     translate(width/5, height/5);
  for (int i=0; i<50; i++){
   
    rotate(random(sin(frameCount)));
   // fill(r,g,b);
    rect(width/1.5, height/2, 90,90);
   // fill(r*2, g*2, b*2);
     rect(width/3, height/2, 90,90);
     if(frameCount >100)
         background(20);
      else
        background(250);
  }
    
    for(int j=0; j <50; j++){
    
     rotate(random(sin(frameCount)));
    // circle (10,50, 10);
    rect(width/4, height/3.7, 90,90);
    if(frameCount >100)
         background(20);
    else
        background(250);
    }
     
     for(int j=0; j <50; j++){
    
     rotate(random(sin(frameCount)));
    // circle (10,50, 10);
    rect(width/8, height/6, 20,20);
    if(frameCount >100)
         background(20);
    else
        background(250);
    }
     
   /* 
    float r2 = random(50);
  float g2 = random(150);
  float b2 = random(100);

  for (int i=0; i<200; i++){
    
    r2 += 0.2;
    g2 += 0.2;
    b2 += 0.2;
    fill(r2,g2,b2);
  }
    
    translate(width/10, height/10);
    rotate(random(sin(frameCount)*5));
    rect(width/3.5, height/3.5, 70,70);*/
  
    
  }
