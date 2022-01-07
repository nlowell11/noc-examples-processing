// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// An array of objects
Heart[] oscillators = new Heart[10];

void setup()  {   
  size(1000,1000);  
  smooth();  
  // Initialize all objects
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i] = new Heart();
  }
  background(255);  
}   

void draw() {     
  background(255);  
  // Run all objects
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i].oscillate();
    oscillators[i].display();
  }
}   

void mouseClicked(){
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i].mouseClicked();
  }
}
