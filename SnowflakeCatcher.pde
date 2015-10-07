Snowflake [] bobsters = new Snowflake [30];
void setup()
{
  //your code here
  size(300,300);
  frameRate(30); 
  background(0);
  stroke(0);
  for (int i = 0; i < bobsters.length; i++)
  {
   bobsters[i] = new Snowflake();
  }
 
}
void draw()
{

  //your code here
  for (int i = 0; i < bobsters.length; i++)
  {
   bobsters[i].erase();
   bobsters[i].lookDown();
   bobsters[i].move();
   bobsters[i].wrap();
   bobsters[i].show();
  }
 
}
void mouseDragged()
{
  //your code here
  fill(255,0,0);
  noStroke();
  ellipse(mouseX,mouseY,5,5);
}

class Snowflake
{
  //class member variable declarations
  int x, y, move;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random() * 301);
    y = (int)(Math.random() * 301);
    isMoving = true;
    move = (int)(Math.random()*5) + 2 ;
  }
  void show()
  {
    //your code here
    fill(255);
    ellipse(x,y,5,5);
  }
  void move()
  {
    //your code here
    if(isMoving == true)
    {
      y+= move;
    }
    
  }

  void lookDown()
  {
    //your code here
    if (y > 0 && y < 300)
    {
      if(get(x,y+4) == color(0))
      {
        isMoving = false;
      }
    } 
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(x,y,6,6);
  
  }
  
  void wrap()
  {
    //your code here
    if (y > 296.5)
    {
      y = 0;
      x = (int)(Math.random() * 301);
      move = (int)(Math.random()*5) + 2 ;
    }

  }
}
