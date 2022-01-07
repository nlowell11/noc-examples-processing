// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// A random walker class!

class Walker {
  PVector position;
  PVector role;
  PVector noff;
  color c;
  int spacing = 500/36;
  int range = 15;
  int size = 25;
  float delta = 0.1;

  Walker(int x, int y) {
    position = new PVector(width/2, height/2);
    noff = new PVector(random(1000),random(1000));
    c = color(random(0,100), random(150,255), random(150,255));
    role = new PVector(x,y);
  }

  void display() {
    strokeWeight(1);
    fill( c );
    stroke(255);
    rect(position.x, position.y, size+map(noise(noff.x), 0, 1, -15,15), size+map(noise(noff.y), 0, 1, -15,15));
  }

  // Randomly move up, down, left, right, or stay in one place
  void walk() {
    
    position.x = map(noise(noff.x),0,1,role.x*spacing-range,role.x*spacing+range);
    position.y = map(noise(noff.y),0,1,role.y*spacing-range,role.y*spacing+range);
    c = color(map(position.y, 0,height,-25,270)+random(5), 180 ,map(position.x, 0,height,100,255));
    noff.add(delta,delta,0);
  }
}
