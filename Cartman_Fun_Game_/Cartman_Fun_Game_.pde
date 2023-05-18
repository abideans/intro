
PImage bg;

int x, y, score, tarX, tarY;
float dist;

int size=50;
PVector pos = new PVector(1280/2- size/2,620);
PVector vel = new PVector (0,0);
PVector acc = new PVector (0,0);
void setup() {
  size(1920, 1080);
  bg= loadImage("spb.png");
  
  x = 20;
  y = 20;
  score = 0;
  tarX = int(random(width));
  tarY = int(random(height));
  dist=0;

  

  background(bg);
}

void draw() {
  pos.add(vel);
  
  // background(bg);

 image(bg, 0, 0);
   pos.add(vel);
    
    dist = dist(x, y, tarX, tarY);
    println(dist);

    //body
    fill(#764834);
    rect(x-113, y+155, 228, 55);


    fill(#ef314f);
    ellipse(x, y+100, 270, 200);

    //feet
    fill(#33303b);
    arc(x, y+213, 250, 30, PI, TWO_PI);

    fill(#ffdf1f); //hands
    ellipse(x+125, y+90, 60, 50);
    ellipse(x-125, y+90, 60, 50);

    //button
    fill(#33303b);
    ellipse(x-10, y+110, 5, 10);
    ellipse(x-10, y+140, 5, 10);
    ellipse(x-10, y+170, 5, 10);




    stroke(0);
    fill(#feefc4);
    ellipse(x, y+12, 230, 150);// Draws the head
    arc(x, y+45, 170, 70, 0, PI);
    arc(x, y+60, 80, 15, 0, PI);

    fill(#FFFFFF);

    ellipse(x-25, y-0, 50, 60); //Left eye
    ellipse(x+25, y-0, 50, 60); // Right eye


    stroke(0);
    fill(#000000);
    ellipse(x-20, y-5, 5, 5); //pupil
    ellipse(x+20, y-5, 5, 5); //pupil

    stroke(0);
    fill(#02bac9);//Hat
    arc(x-2, y-25, 210, 150, PI, TWO_PI);

    noStroke();
    fill(#f6e019);
    arc(x-3, y-25, 210, 20, PI, TWO_PI);

    ellipse(x, y-100, 50, 40);

    //mouth
    fill(#33303b);
    arc(x-5, y+50, 40, 15, 0, PI+QUARTER_PI, CHORD);



    fill(#FFF8E3);

    rect(tarX+30, tarY-11, 50, 20);
    fill(#DEA404);
    ellipse(tarX, tarY, 80, 70);
    fill(#FFF8E3);
    ellipse(tarX+80, tarY-10, 20, 20);
    ellipse(tarX+80, tarY+10, 20, 20);
    textSize(70);
    text("Score",40,70); 
    image(bg, 1000, 1000);
    
     
     
     
    
      
      if(keyPressed && (key == 'w')) {
      vel.y=20;
    }
  }

 
 
  //if(keyPressed) {
    //if(key =='w' || key== 'W'){
 
 // } else if(key =='s' || key== 'S'){
     // y=y +5;
    //} else if(key =='a' || key== 'A'){
      //x=x-5;
    //}else if(key =='d' || key== 'D'){
      //x=x+5;
   // } else if(key=='q'||key=='Q'){
     // y=y-5;
      //x=x-5;

  
  




  
