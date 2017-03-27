class Ball {
  int x;
  int y;
  float op;
  PVector loc;
  Ball(PVector location) {
    x = mouseX;
    y = mouseY;
    op = 255;
    loc = location;
  }
  
 void update(){
    op = op - 5;
    println(op);
  }
  float opacity(){
    return op;
  }
  void display(){
    noStroke();
    pushMatrix();
    fill(0,0,255,op);
    translate(loc.x*200,loc.y*200,loc.z*200);
    ellipse(0,0,10,10);
    popMatrix();
  }
  
}