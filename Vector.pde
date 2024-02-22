public class Vector {
  float x;
  float y;
  float angle;
  Color colorStyle;
  
  public Vector(float x, float y, float angle, float colorStart) {
    this.x = x;
    this.y = y;
    this.angle = angle;
    this.colorStyle = new Color(colorStart);
  }
  
  public Vector(float f) {
     this.x = random(-f, f);
     this.y = random(-f, f);
     this.angle = random(-f / 10000, f / 10000);
     this.colorStyle = new Color(0);
  }
  
  public void add(Vector add) {
     this.x += add.x;
     this.y += add.y;
     this.angle += add.angle;
     this.colorStyle.add(add.colorStyle);
  }
  
  public void randomize(float f) {
     this.x = random(-f, f);
     this.y = random(-f, f);
     this.angle = random(-f / 10000, f / 10000);
     this.colorStyle.randomize(f);
  }
  
  public boolean offScreen() {
     return outOfBounds(this.x, 0, width) || outOfBounds(this.y, 0, height);
  }
  
  public void invert() {
    this.x *= -1;
    this.y *= -1;
  }
}
