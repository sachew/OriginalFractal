public void setup(){
  size(500,500);
  rectMode(CENTER);
  frameRate(5);
}

public void draw(){
  background(0);
  myFractal(250, 250, 300);
}

public void myFractal(int x, int y, int siz){
  fill((float)Math.random()*100+50,(float)Math.random()*100+50,(float)Math.random()*100+50);
  ellipse(x,y,siz,siz);
  if(siz > 10){
    myFractal(x-20, y-6, siz/2);
    myFractal(x+20, y+6, siz/2);
  }
}
