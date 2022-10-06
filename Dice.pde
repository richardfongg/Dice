Die dog;
int total = 0;
void setup()
  {
      
      size(1000,1000);
      noLoop();
      dog = new Die(0,200);
  }
  void draw()
  { 
    background(((int)(Math.random() * 256)),((int)(Math.random() * 256)),((int)(Math.random() * 256)));
    for(int w = 200; w < 500; w = w + 50){
      for(int i = 350; i < 650; i = i + 50){
        dog = new Die(i,w);
        dog.show();
        dog.roll();
    }
  }
  dog.total();
  }
  void mousePressed()
  { 
    total = 0;
    redraw();
  }
  class Die 
  {
      int dieX, dieY;
      int outcome;
      Die(int x, int y) 
      {
          dieX = x;
          dieY = y;
      }
      void roll()
      {
        int dieNumber = (int)(Math.random()*6);
          if (dieNumber < 1)
            outcome = 1;
          else if (dieNumber < 2)
            outcome = 2;
          else if (dieNumber < 3)
            outcome = 3;
          else if (dieNumber < 4)
            outcome = 4;
          else if (dieNumber < 5)
            outcome = 5;
          else outcome = 6;
          if(outcome == 1)
            ellipse(dieX + 25,dieY + 25,10,10);
          else if(outcome == 2){
            ellipse(dieX + 12, dieY + 12, 10, 10);
            ellipse(dieX + 38, dieY + 38, 10, 10);
          }
          else if(outcome == 3){
            ellipse(dieX + 38, dieY + 12, 10, 10);
            ellipse(dieX + 12, dieY + 38, 10, 10);
            ellipse(dieX + 25, dieY + 25, 10, 10);
          }
          else if(outcome == 4){
            ellipse(dieX + 38, dieY + 12, 10, 10);
            ellipse(dieX + 12, dieY + 12, 10, 10);
            ellipse(dieX + 12, dieY + 38, 10, 10);
            ellipse(dieX + 38, dieY + 38, 10, 10);
          }
          else if(outcome == 5){
            ellipse(dieX + 38, dieY + 12, 10, 10);
            ellipse(dieX + 12, dieY + 12, 10, 10);
            ellipse(dieX + 12, dieY + 38, 10, 10);
            ellipse(dieX + 38, dieY + 38, 10, 10);
            ellipse(dieX + 25, dieY + 25, 10, 10);
          }
          else if(outcome == 6){
            ellipse(dieX + 38, dieY + 12, 10, 10);
            ellipse(dieX + 12, dieY + 12, 10, 10);
            ellipse(dieX + 12, dieY + 38, 10, 10);
            ellipse(dieX + 38, dieY + 38, 10, 10);
            ellipse(dieX + 12, dieY + 25, 10, 10);
            ellipse(dieX + 38, dieY + 25, 10, 10);
          }
          total = total + outcome;
      }
      void show()
      {
        fill(255);
        rect(dieX,dieY,50,50,20);
        fill(0);
      }
      void total()
      {
        fill(255);
        rect(420,560,180,50);
        fill(0);
        textSize(32);
        text("Total:" + total, 430, 600);
        
      }
  }
  
