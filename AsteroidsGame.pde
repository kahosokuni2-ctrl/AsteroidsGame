//your variable declarations here
Spaceship bob = new Spaceship();
Star [] nightSky = new Star[200];
public void setup() 
{
  //your code here
  size(400,400);
  for (int i = 0; i<nightSky.length; i++){
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  bob.show();
  for (int i = 0; i<nightSky.length; i++){
    nightSky[i].show();
  }
   bob.move();
   bob.show();
}
public void keyPressed() {
  if (key == 'h' || key=='H'){ //hyperspace
     bob.setXspeed(0);
     bob.setYspeed(0);
     bob.setCenterX((int)(Math.random()*400));
     bob.setCenterY((int)(Math.random()*400));
     bob.setMyDirection(Math.random()*360);
   }
   if (key == 'd'|| key=='D'){
     bob.turn(10);
     }
   else if (key=='a'|| key=='A'){
     bob.turn(-10);
     }
   else if (key == 'w'|| key=='W'){
     bob.accelerate(1);
     }
 }
