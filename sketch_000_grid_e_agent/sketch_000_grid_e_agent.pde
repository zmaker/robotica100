/**
000 - Grid e agent

Disegna la griglia di movimento dell'ambiente e un agente dotato di testa (o occhio)
*/

int x, y = 0;
int STEP = 480/10;

void setup() {
  size(500,500);
  background(0);
}

void draw() {
  grid();
  agent(x,y);
}

void agent(int x, int y) {
  fill(127);
  noStroke();
  ellipse(10+(x*STEP)+STEP/2, 10+(y*STEP)+STEP/2, STEP-10,STEP-10);
  fill(255);
  ellipse(10+(x*STEP)+STEP/4, 10+(y*STEP)+STEP/2, 10,10);
}

void grid() {
  fill(0);
  stroke(255);
  rect(10,10, 480, 480);
  for (int i = 0; i < 10; i++) {
    line(10, 10+(i*STEP), 490, 10+(i*STEP) );
  }
  for (int i = 0; i < 10; i++) {
    line(10+(i*STEP),10, 10+(i*STEP), 490 );
  }
}
