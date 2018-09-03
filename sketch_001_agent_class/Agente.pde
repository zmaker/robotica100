class Agente {
  final static int NORD = 0;
  final static int EST = 1;
  final static int SUD = 2;
  final static int OVEST = 3;
  
  protected int head = NORD;
  protected int x,y;
  
  public Agente (int x, int y, int head) {
    super();
    this.x = x;
    this.y = y;
    this.head = head;
  }
  
  public void setX(int x) {
    this.x = x;
  }
  public int getX() {
    return this.x;
  }
  public void setY(int y) {
    this.y = y;
  }
  public int getY() {
    return this.y;
  }
  public void setPos(int x, int y) {
    this.y = y;
    this.x = x;
  }
  
  public void setHead(int h) {
    this.head = h;
  }
  public int getHead(){
    return this.head;
  }
}
