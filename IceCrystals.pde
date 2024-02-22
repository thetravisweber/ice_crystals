
Stick sticks[] = new Stick[100];

void setup() {
  fullScreen();
  //size(800, 800);
  print("sometimes when you're bored then you just have to draw");
  background(0);
  
  for (int i = 0; i < sticks.length; i++) {
    sticks[i] = new Stick(); 
  }
}

void draw() {
  //fill(0);
  //rect(90, 90, 100, 10);
  //fill(255);
  //text(frameRate, 100, 100);
  for (Stick stick : sticks) {
   stick.floatAround();
   stick.draw();
  }
}

boolean outOfBounds(float val, float min, float max) {
  return ((val < min) || (val > max));
}
