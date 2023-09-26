void mousePressed(){
  redraw();
}//mousePressed end

class Die{
  int dieX, dieY, num, r, g, b;
  
  Die(int x, int y){
    dieX=x;
    dieY=y;
    num=0;
    r=255;
    g=255;
    b=255;
  }//constructor end
  
  void roll(){
    num=(int)(Math.random()*6)+1;
    
    if(num==6){
      fill(r,g,b);
      ellipse((dieX+15),(dieY+7),10,10);
      ellipse((dieX+15),(dieY+14),10,10);
      ellipse((dieX+15),(dieY+21),10,10);
      ellipse((dieX+35),(dieY+28),10,10);
      ellipse((dieX+35),(dieY+35),10,10);
      ellipse((dieX+35),(dieY+42),10,10);
    }else if(num==5){
      fill(r,g,b);
      ellipse((dieX+35),(dieY+15),10,10);
      ellipse((dieX+15),(dieY+35),10,10);
      ellipse((dieX+35),(dieY+35),10,10);
      ellipse((dieX+15),(dieY+15),10,10);
      ellipse((dieX+25),(dieY+25),10,10);
    }else if(num==4){
      fill(r,g,b);
      ellipse((dieX+35),(dieY+15),10,10);
      ellipse((dieX+15),(dieY+35),10,10);
      ellipse((dieX+35),(dieY+35),10,10);
      ellipse((dieX+15),(dieY+15),10,10);
    }else if(num==3){
      fill(r,g,b);
      ellipse((dieX+10),(dieY+10),10,10);
      ellipse((dieX+25),(dieY+25),10,10);
      ellipse((dieX+40),(dieY+40),10,10);
    }else if(num==2){
      fill(r,g,b);
      ellipse((dieX+35),(dieY+25),10,10);
      ellipse((dieX+15),(dieY+25),10,10);
    }else{
      fill(r,g,b);
      ellipse((dieX+25),(dieY+25),10,10);
    }
  }
  
  void show(){
    fill(0,0,0);
    rect(dieX,dieY,50,50);
  }
  
}//die class end

Die die1;

void setup(){
  size(500,500);
  noLoop();
  die1=new Die(225,225);
}//setup end

void draw(){
  die1.show();
  die1.roll();
}//draw end
