void setup()
{
  //your code here
  size(300,300);
}
void draw()
{
  //your code here
  Snowflake bob = new Snowflake();
  bob.erase();
  bob.move();
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
    if (isMoving == true)
    {
       y++;
    }
  }
  void wrap()
  {
    //your code here
  }
}


