//your variable declarations here
Spaceship bob = new Spaceship();

ArrayList <Asteroid> rocks;


Star [] nightSky = new Star[200];

public void setup() 
{
  //your code here
  size(400,400);
  for (int i = 0; i<nightSky.length; i++){
    nightSky[i] = new Star();
  }
  rocks = new ArrayList<Asteroid>();
  for (int i = 0; i<10; i++){
    rocks.add(new Asteroid());
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
   for (int i = 0; i<rocks.size(); i++){
     rocks.get(i).show();
     rocks.get(i).move();
     float d = dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)rocks.get(i).getCenterX(), (float)rocks.get(i).getCenterY());
     if (d<10){
      rocks.remove(i);
     }
   }
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
