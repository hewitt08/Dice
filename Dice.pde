float x = 0;
float y = 0;
int r=255;
int g=255;
int b=255;
int showR = 0;
int showG = 0;
int showB = 0;
int sum = 0;
float dieSize = 100;
float dotSize = dieSize/5;
//500,250,100,50,25,10

void mousePressed(){
  int dieSizeRandom = (int)(Math.random()*6);
  if(dieSizeRandom==5){
    dieSize=500;
  }else if(dieSizeRandom==4){
    dieSize=250;
  }else if(dieSizeRandom==3){
    dieSize=100;
  }else if(dieSizeRandom==2){
    dieSize=50;
  }else if(dieSizeRandom==1){
    dieSize=25;
  }else{
    dieSize=10;
  }
  dotSize = dieSize/5;
  redraw();
}//mousePressed end

class Die{
  float dieX, dieY, num;
  
  Die(float x, float y){
    dieX=x;
    dieY=y;
    num=0;
  }//constructor end
  
  void roll(){
    num=(int)(Math.random()*6)+1;
    noStroke();
    if(num==6){
      sum = sum + 6;
      fill(r,g,b);
      ellipse(dieX+(dieSize/3.33),(dieY+(dieSize/4)),dotSize,dotSize);//left2
      ellipse(dieX+(dieSize/3.33),(dieY+(dieSize/2)),dotSize,dotSize);//left
      ellipse(dieX+(dieSize/3.33),(dieY+(dieSize/4)*3),dotSize,dotSize);//left
      
      ellipse((dieX+(dieSize-(dieSize/3.33))),(dieY+(dieSize/4)),dotSize,dotSize);//right2
      ellipse(dieX+(dieSize-(dieSize/3.33)),(dieY+(dieSize/2)),dotSize,dotSize);//right
      ellipse(dieX+(dieSize-(dieSize/3.33)),(dieY+(dieSize/4)*3),dotSize,dotSize);//right
    }else if(num==5){
      sum = sum + 5;
      fill(r,g,b);
      ellipse((dieX+(dieSize-(dieSize/3.33))),(dieY+(dieSize/3.33)),dotSize,dotSize);
      ellipse((dieX+(dieSize/3.33)),(dieY+(dieSize-(dieSize/3.33))),dotSize,dotSize);
      ellipse((dieX+(dieSize-(dieSize/3.33))),(dieY+(dieSize-(dieSize/3.33))),dotSize,dotSize);
      ellipse((dieX+(dieSize/3.33)),(dieY+(dieSize/3.33)),dotSize,dotSize);
      ellipse((dieX+(dieSize/2)),(dieY+(dieSize/2)),dotSize,dotSize);
    }else if(num==4){
      sum = sum + 4;
      fill(r,g,b);
      ellipse((dieX+(dieSize-(dieSize/3.33))),(dieY+(dieSize/3.33)),dotSize,dotSize);
      ellipse((dieX+(dieSize/3.33)),(dieY+(dieSize-(dieSize/3.33))),dotSize,dotSize);
      ellipse((dieX+(dieSize-(dieSize/3.33))),(dieY+(dieSize-(dieSize/3.33))),dotSize,dotSize);
      ellipse((dieX+(dieSize/3.33)),(dieY+(dieSize/3.33)),dotSize,dotSize);
    }else if(num==3){
      sum = sum + 3;
      fill(r,g,b);
      ellipse((dieX+(dieSize/5)),(dieY+(dieSize/5)),dotSize,dotSize);
      ellipse((dieX+(dieSize/2)),(dieY+(dieSize/2)),dotSize,dotSize);
      ellipse((dieX+((dieSize/5)*4)),(dieY+((dieSize/5)*4)),dotSize,dotSize);
    }else if(num==2){
      sum = sum + 2;
      fill(r,g,b);
      ellipse((dieX+(dieSize-(dieSize/3.33))),(dieY+(dieSize/2)),dotSize,dotSize);
      ellipse((dieX+(dieSize/3.33)),(dieY+(dieSize/2)),dotSize,dotSize);
    }else{
      sum = sum + 1;
      fill(r,g,b);
      ellipse((dieX+(dieSize/2)),(dieY+(dieSize/2)),dotSize,dotSize);
    }
  }
  
  void show(){
    fill(showR,showG,showB);
    stroke(255);
    rect(dieX,dieY,dieSize,dieSize);
  }
  
}//die class end

Die die1;

void setup(){
  size(500,500);
  noLoop();
  //background(255);
}//setup end

void draw(){
//500,250,100,50,25,10
  while(x<500){
    while(y<500){
      if(dieSize>250){
        showB = sum;
      }else if(dieSize>100){
        showB = sum/30;
      }else if(dieSize>50){
        showB = sum/4;
      }else if(dieSize>25){
        showB = sum/8;
      }else if(dieSize>10){
        showB = sum/10;
      }else{
        showB = sum/80;
      }
      die1=new Die(x,y);
      die1.show();
      die1.roll();
      y = y + dieSize;
    }
    y = 0;
    x = x + dieSize;
  }
  fill(255,0,0);
  textSize(100);
  text(sum,20,90);
  x = 0;
  y = 0;
  sum = 0;
}//draw end
