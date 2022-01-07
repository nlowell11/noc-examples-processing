// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com


Walker[][] w;
int count;

void setup() {
  size(500, 500);
  frameRate(30);
  count = 36;
  colorMode(HSB, 255);
  w = new Walker[count][count];
  for(int i = 0; i < count; i++){
    for (int j = 0; j < count; j++){ 
  // Create a walker object
    w[i][j] = new Walker(i,j);
    }
  }
}

void draw() {
  background(255);
  // Run the walker object
  for(Walker[] wl: w){
    for(Walker walk: wl){
      walk.walk();
      walk.display();
    }
  }
}
