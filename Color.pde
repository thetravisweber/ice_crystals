public class Color {
  float r;
  float g;
  float b;
  float a;
 
  public Color(float start) {
    this.r = start;
    this.g = start;
    this.b = start;
    this.a = 0;
  }
  
  public void add(Color add) {
   this.r += add.r;
   this.g += add.g;
   this.b += add.b;
   this.a += add.a;
   this.a = constrain(this.a, 0, 5);
  }
  
  public void randomize(float f) {
    float whiteLean = 1.0001;
    this.r = random(-f * whiteLean, f);
    this.g = random(-f * whiteLean, f);
    this.b = random(-f * whiteLean, f);
    this.a = random(-f * whiteLean / 100, f / 100);
  }
  
  public color get() {
     return color(255, 255, 255, this.a);
     //return color(this.r, this.g, this.b, this.a); 
  }
  
}
