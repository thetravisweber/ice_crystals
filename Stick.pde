public class Stick {
  float length;
  Vector pos;
  Vector vel;
  Vector acc;
  
  public Stick() {
    this.pos = new Vector(random(0, width), random(0, height), random(0, TWO_PI), 255);
    this.length = random(width / (float(sticks.length) / 2), width / (float(sticks.length) * 10));
    this.vel = new Vector(.2);
    this.acc = new Vector(.1);
  }
  
  public void floatAround() {
    this.pos.add(this.vel);
    this.vel.add(this.acc);
    this.acc.randomize(.1);
  }
  
  public void draw() {
    float endX = cos(this.pos.angle) * this.length + this.pos.x;
    float endY = sin(this.pos.angle) * this.length + this.pos.y;
    stroke(this.pos.colorStyle.get());
    line(this.pos.x, this.pos.y, endX, endY);
    if (this.pos.offScreen()) {
      this.vel.invert(); 
    }
  }
}
