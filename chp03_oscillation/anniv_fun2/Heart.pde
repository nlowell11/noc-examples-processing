// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Heart {   

  PVector angle;
  PVector velocity;
  PVector amplitude;
  color c;

  Heart() {   
    angle = new PVector();
    velocity = new PVector(random(-0.05, 0.05), random(-0.05, 0.05));
    amplitude = new PVector(random(20, width/2), random(20, height/2));
    c = color(120,0,0);
  }   

  void oscillate() {
    angle.add(velocity);
  }   
  
  void mouseClicked(){
    c = color(0,0,120);
    print("test");
  }

  void display() {   

    float x = sin(angle.x)*amplitude.x;
    float y = sin(angle.y)*amplitude.y;

    pushMatrix();
    translate(width/2, height/2);
    noStroke();
    //strokeWeight(2);
    fill(c);
    line(0, 0, x, y);  
    //ellipse(x, y, 32, 32);
    arc(x-25, y, 50, 50, -PI, 0);
    arc(x+25, y, 50, 50, -PI, 0);
    triangle(x+51, y-2, x-51, y-2, x, y+100);

    //stroke(1);
    /*
    beginShape();
    vertex(x, y+15); 
    bezierVertex(x, y-5, x+40, y+5, x, y+40); 
    //endShape();
    //fill(0,0,120);
    vertex(x, y+15); 
    bezierVertex(x, y-5, x-40, y+5, x, y+40); 
    endShape(CLOSE);
    */
    popMatrix();
  }
}   
