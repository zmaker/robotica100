/**
003 - sulla griglia esiste un gradiente, per esempio una fonte di luce o una
temperatura o l'odore di cibo...

La posizione della fonte di cibo/luce è in basso a destra

In questo Sketch disegnano solo il rettangolo che corrisponde al cibo usando una 
funzone e calcolndo le coordinate

*/

int STEP = 480/10;

Agente agente;

void setup() {
  size(500,500);
  background(0);
  agente = new Agente(1,1,Agente.NORD);
  drawAgente(agente);
}

void draw() {
  grid();
  //disegna il cibo nella posizione 9,9
  food(9,9);
  delay(1000);
  agente = calcolaMossa(agente);
  drawAgente(agente);
}

void food(int x, int y) {
  noStroke();
  fill(29, 174, 240);
  rect(10+x*STEP+3, 10+y*STEP+3, STEP-5,STEP-5); 
}

Agente calcolaMossa(Agente a) {
  /*
  //estrae una dir
  int dir = (int)random(4);
  //recupera le coor attuali:
  int x = a.getX();
  int y = a.getY();
  //fa un passo nella direzione:
  switch (dir) {
    case Agente.NORD:
      y--;
      break;
    case Agente.SUD:
      y++;
      break;
    case Agente.EST:
      x--;
      break;
    case Agente.OVEST:
      x++;
      break;
  }
  //verifica limiti
  if (x < 0) x = 0;
  if (x >= 10) x = 9;
  if (y < 0) y = 0;
  if (y >= 10) y = 9;
  
  //imposta i nuovi valori:
  a.setX(x);
  a.setY(y);
  a.setHead(dir);
  */
  return a;  
}

void drawAgente(Agente a) {
  int x = a.getX();
  int y = a.getY();
  fill(127);
  noStroke();
  //corpo
  ellipse(10+(x*STEP)+STEP/2, 10+(y*STEP)+STEP/2, STEP-10,STEP-10);
  fill(255);
  //testa
  int m = 0;
  int n = 0;
  switch (a.getHead()) {
    case Agente.NORD:
      n = STEP/4;
      m = STEP/2;
      break;
    case Agente.SUD:
      n = STEP/4+STEP/2;
      m = STEP/2;
      break;      
    case Agente.EST:
      m = STEP/4;
      n = STEP/2;
      break;
    case Agente.OVEST:
      m = STEP/4+STEP/2;
      n = STEP/2;
      break;
  }
  
  ellipse(10+(x*STEP)+m, 10+(y*STEP)+n, 10,10);
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