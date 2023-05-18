//Abi Deans | April 18| EtchASketch 


int x, y;
PImage photo;

void setup() {
  size(800,650);
   
  x=width/2;
  y=height/2;
  
  photo = loadImage("Etch.png");
  background(128);
}

 
void draw() {
  image(photo,0,0);
}

void mousePressed() {
  saveFrame("line-######.png");
}

void keyPressed() {
   if(keyPressed) {
    if(key =='w' || key== 'W'){
      moveUp(10);
    } else if(key =='s' || key== 'S'){
      moveDown(10);
    } else if(key =='a' || key== 'A'){
      moveLeft(10);
    }else if(key =='d' || key== 'D'){
      moveRight(10);
    }
   }
}


void moveRight(int rep) {
  for(int i=0; i<rep; i=i+1) {
  point(x+i,y);
  }
  x = x + rep;
}

void moveLeft(int rep) {
   for(int i=0; i<rep; i=i+1) {
  point(x-i,y);
  }
  x = x - rep;
}



void moveUp(int rep) {
   for(int i=0; i<rep; i=i+1) {
  point(x,y-i);
  }
  y = y - rep;
}

void moveDown(int rep){ 
  for(int i=0; i<rep; i=i+1) {
  point(x,y+i);
  }
  y = y + rep;
}
