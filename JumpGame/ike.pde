
class Ike {
  int x, y,speed;
  PImage Ike;

  Ike() {
    x = width;
    y= height-100;
    speed=int(random(2,10));
    Ike=loadImage ("ike2.png");
  }
  void display () {
    imageMode(CENTER);
    image(Ike, x, y);
  }
  void move() {
    if (x<0) {
      x=width;
    } else {

      x=x-speed;
    }
  }
}
