String txt;

float y = 0;

void setup() {
  // size(1280, 720, P3D); 
  fullScreen(P3D);
  String[] lines = loadStrings("space.txt");
  txt = join(lines, "\n");
  y = height/2;
}

void draw() {
  background(0);
  translate(width/2, height/2);

  fill(255, 215, 0);
  textSize(width*0.04);
  textAlign(CENTER);
  rotateX(PI/4);
  float w = -width*0.6;
  text(txt, -w/2, y, w, height*10);

  y-=2;
}
