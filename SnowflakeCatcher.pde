

Snowflake [] bobsters = new Snowflake [90];


void setup()
{
  //your code here
  size(300,300);
  frameRate(40); 
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
  ellipse(mouseX,mouseY,10,10);

}

class Snowflake
{
  //class member variable declarations
  int x, y, moverino;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random() * 301);
    y = (int)(Math.random() * 301);
    isMoving = true;
    moverino = (int)(Math.random()*5) + 2 ;
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
      y+= moverino;
    }
    
  }

  void lookDown()
  {
    //your code here
    if (y > 0 && y < 300)
    {

      if(get(x,y+4) == color(255,0,0))
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
      moverino = (int)(Math.random()*5) + 2 ;
    }

  }
}
