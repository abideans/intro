class Cartman {
  int x, y;
  PImage cartman;

  Cartman() {
    x=width/2;
    y=height-100;
    cartman=loadImage("cartman2.png");
  }

  void display() {
    imageMode(CENTER);
    cartman.resize(100, 100);
    image(cartman, x-300, y+20);
  }
  void move(char dir) {
    if (dir == 'd') {
      x=x+20;
    } else if (dir== 'a') {
      x=x-20;
    } else if (dir == 'w') {
      y=y-20;
    } else if (dir == 's') {
      y=y+20;
    }
  }
}
