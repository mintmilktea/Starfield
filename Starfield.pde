Particle [] bob = new Particle[250];

void setup(){
  size(500, 500);
  background(0);
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Particle();
  }
  bob[0] = new Oddball();
}

void draw(){
  fill(0, 0, 0, 10);
  rect(0,0,500,500);
  for(int i = 0; i < bob.length; i++){
    bob[i].move();
    bob[i].show();
  }
}

class Particle{
  int myC;
  double myX, myY, myS, myA;
  Particle(){
    myC = 255;
    //myC = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = myY = 250;
    myS = Math.random()*2;
    myA = (Math.random()*2) * Math.PI;
  }
  void move(){
    myX = myX + Math.cos(myA) * myS;
    myY = myY + Math.sin(myA) * myS;
    if(myX <= 2.5 || myY <= 2.5 || myX >= 497.5 || myY >= 497.5){
      myX = myY = 250;
    }
  }
  void show(){
    fill(myC);
    ellipse((float)myX, (float)myY, 5, 5);
  }
}

class Oddball extends Particle{
  Oddball(){
    myC = color(#B1FAE3);
    myX = myY = 250;
    myS = 7;
    myA = (Math.random()*2) * Math.PI;
  }
  void move(){
    myX = myX + Math.cos(myA) * myS;
    myY = myY + Math.sin(myA) * myS;
    if(myX <= 5 || myY <= 5 || myX >= 495 || myY >= 495){
      myA = myA + 1.2 * Math.PI;
    }
  }
  void show(){
    fill(myC);
    ellipse((float)myX, (float)myY, 10, 10);
  }
}
