class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
      corners = 6; 
      xCorners = new int[corners]; 
      yCorners = new int[corners]; 
      xCorners[0] = -11; 
      yCorners[0] = -8; 
      xCorners[1] = 7; 
      yCorners[1] = -8; 
      xCorners[2] = 13; 
      yCorners[2] = 0;
      xCorners[3] = 6;
      yCorners[3] = 10; 
      xCorners[4] = -11;
      yCorners[4] = 8;
      xCorners[5] = -5;
      yCorners[5] = 0;
      
      myColor = 255;
      myCenterX =(int)(Math.random()*400);
      myCenterY =(int)(Math.random()*400);
      myXspeed = Math.random()*3;
      myYspeed = Math.random()*3;
      myPointDirection = 0;
      rotSpeed = (Math.random()*20-10);
    }
    public int getColor(){
      return myColor;
    }
    public void setColor(int co){
      myColor = co;
    }
    public double getCenterX(){
      return myCenterX;
    }
    public double getCenterY(){
      return myCenterY;
    }
    public void setCenterX(double centerX){
      myCenterX = centerX;
    }
    public void setCenterY(double centerY){
      myCenterY = centerY;
    }
    public double getmyXspeed(){
      return myXspeed;
    }
    public double getmyYspeed(){
      return myYspeed;
    }
    public void setXspeed(double x){
      myXspeed = x;
    }
    public void setYspeed(double y){
      myYspeed = y;
    }
    
    public double getmyPointDirection(){
      return myPointDirection;
    }
    public void setMyDirection(double direction){
      myPointDirection = direction;
    }
    public double getRotSpeed(){
      return rotSpeed;
    }
    public void setRotSpeed(double r){
      rotSpeed = r;
    }
    
    public void move(){
      turn(rotSpeed);
      super.move();
    }
}
