Snowflake [] bobsters = new Snowflake [35];
void setup()
{
  //your code here
  size(300,300);

  //bob.erase();
 
}
void draw()
{
  //your code here

  for (int i = 0; i < bobsters.length; i++)
  {
   bobsters[i] = new Snowflake();
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

}

class Snowflake
{
  //class member variable declarations
  int x, y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random() * 301);
    y = (int)(Math.random() * 301);
    isMoving = true;
  }
  void show()
  {
    //your code here
    ellipse(x,y,5,5);
  }
  void lookDown()
  {
    //your code here
    if ((y > 0 && y < 300)&&(get(x,y) != color(0)))
    {
      isMoving = false;
    }
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(x,y,7,7);
  }
  void move()
  {
    //your code here
    if(isMoving = true)
    {
      y++;
    }
    
  }
  void wrap()
  {
    //your code here
    if (y > 300)
    {
      y = 0;
      x = (int)(Math.random() * 301);
    }
  }
}


