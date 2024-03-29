
PImage bg;

float xpos;
float ypos;

boolean play;

Cartman c1;
Ike i1, i2, i3;

int score, level;
float ike1Dist; 

void setup() {
  size(992,511);
  c1= new Cartman();
  i1= new Ike();
  //i2 = new Ike();
 bg=loadImage("tree.jpg");

  xpos = 50 ;
  ypos = 1500;
  frameRate(25);
  score =0;
  level = 1;
  play = false;
}


void draw() {
    background(bg); 
     image(bg, 0, 0);
     
  ike1Dist = dist(c1.x,c1.y,i1.x,i1.y);
 
  println(ike1Dist);
  if (!play) {
    startScreen();
  } else {
    
    background(255);
    infoPanel();
    c1.display();
    i1.display();
    i1.move();
  //  i2.display();
   // i2.move();
    
    if(ike1Dist<50) {
    
 i1.x=width;
  score= score +50;

      
    }


    if (c1.x>1280) {
     
      gameOver();
       
    }
   
  }
}



void keyPressed() {

  if(key=='d'||key=='D'){
    c1.move('d');
  }else if (key=='a'||key=='A'){
    c1.move('a');
  }else if (key == 'p'){
    play= true;
  }else if (key == 'w'){
    c1.move('w');
  }else if (key == 's'){
    c1.move('s');
}
}

void drawBackground () {
 fill(#FF05E7);
fill(#05FF49);
 rect(0,511,991,20);

}



  void startScreen() {
   
    fill(225);
    textSize(60);
    textAlign(CENTER);
    text("Cartman Game", width/2, 100);
   textSize(30);
    text("by Abi and Maddie", width/2, 340);
      text("Hit p to start",width/2, 250);
  }


  void gameOver () {
   background (0);
   fill(225);
  text("Game Over", width/2, 100);
  text("Score:" + score,width/2,300);
  text("You Reached level:" +level,width/2,400);
  }

  void infoPanel() {
    fill(128, 128);
    rect(0, 0, width, 50);
    fill(255);
    text("Score:" + score, 50, 40);
  }
