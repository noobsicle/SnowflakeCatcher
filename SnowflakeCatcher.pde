Snowflake [] bobsters = new Snowflake [1];
void setup()
{
  //your code here
  size(300,300);
  background(0);
  noStroke();
   //bob.erase();
 
}
void draw()
{
  //your code here

  for (int i = 0; i < bobsters.length; i++)
  {
   bobsters[i] = new Snowflake();
    bobsters[i].show();
   bobsters[i].lookDown();
   bobsters[i].wrap();
   bobsters[i].move();
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
    fill(255);
    ellipse(x,y,5,5);
  }
  void move()
  {
    //your code here
    if(isMoving == true)
    {
      y++;
    }
    
  }
  void lookDown()
  {
    //your code here
    if (y < 0 && y > 300)
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


