P4Vector[] points = new P4Vector[16];
float angle = 0;
void setup(){
  size(600, 400, P3D);
  points[0] = new P4Vector(-100, -100, -100, 100);
  points[1] = new P4Vector(100, -100, -100, 100);
  points[2] = new P4Vector(100, 100, -100, 100);
  points[3] = new P4Vector(-100, 100, -100, 100);
  points[4] = new P4Vector(-100, -100, 100, 100);
  points[5] = new P4Vector(100, -100, 100, 100);
  points[6] = new P4Vector(100, 100, 100, 100);
  points[7] = new P4Vector(-100, 100, 100, 100);
  points[8] = new P4Vector(-100, -100, -100, -100);
  points[9] = new P4Vector(100, -100, -100, -100);
  points[10] = new P4Vector(100, 100, -100, -100);
  points[11] = new P4Vector(-100, 100, -100, -100);
  points[12] = new P4Vector(-100, -100, 100, -100);
  points[13] = new P4Vector(100, -100, 100, -100);
  points[14] = new P4Vector(100, 100, 100, -100);
  points[15] = new P4Vector(-100, 100, 100, -100);
}

void draw(){
  background(0);
  translate(width/2,height/2);
  rotateY(angle);
  
  for(P4Vector v : points){
    stroke(255);
    strokeWeight(16);
    noFill();
    point(v.x, v.y, v.z);
  }
  
  angle += 0.03;
}
