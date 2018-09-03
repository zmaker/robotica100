class Food {
  protected int x,y;
  
  public Food (int x, int y) {
    super();
    this.x = x;
    this.y = y;    
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
}