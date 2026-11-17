class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
      corners = 3; 
      xCorners = new int[corners]; 
      yCorners = new int[corners]; 
      xCorners[0] = -8; 
      yCorners[0] = -8; 
      xCorners[1] = 16; 
      yCorners[1] = 0; 
      xCorners[2] = -8; 
      yCorners[2] = 8;
      
      myColor = 200;
      myCenterX =200;
      myCenterY = 200;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
    public int getCorners(){
      return corners;
    }
    public void setCorners(int c){
      corners = c;
    }
    public int [] getxCorners(){
      return xCorners;
    }
    public void setXcorners(int[] sX){
      xCorners = sX;
    }
    public int [] getYCorners(){
      return yCorners;
    }
    public void setYcorners(int[] sY){
      yCorners = sY;
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
}
