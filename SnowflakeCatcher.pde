  Snowflake [] snow = new Snowflake[1000];
void setup()
{
  size(600,600);
  background(0);
  for(int a = 0; a< snow.length; a++)
  {
    snow[a]=new Snowflake();
  }
  //your code here
}
void draw()
{
  for(int b = 0;b < snow.length;b++)
  {
    snow[b].erase();
    snow[b].lookDown();
    snow[b].move();
    snow[b].wrap();
    snow[b].show();
  }
  //your code here
}
void keyPressed()
{
  background(0);
}
void mouseDragged()
{
  noStroke();
  if(mouseButton == LEFT)
  {
    fill(255,0,0);
    ellipse(mouseX,mouseY,10,10);
  }
  else
  {
    fill(0);
    ellipse(mouseX,mouseY,15,15); 
  }
  
  //your code here
}

class Snowflake
{
  int myX,myY;
  boolean isMoving  ;
  //class member variable declarations
  Snowflake()
  {
    myX=(int)(Math.random()*600);
    myY=(int)(Math.random()*600)-600;
    isMoving= true;
    //class member variable initializations
  }
  void show()
  {
    fill(255);
    ellipse(myX,myY,5,5);
    //your code here
  }
  void lookDown()
  {
    if((myY>= 0 && myY <= 600) && ((get(myX,myY+6) == color(255,0,0)) 
      || ((get(myX+6,myY) == color(255,0,0))) || (get(myX-6,myY) == color(255,0,0))))
    {
      isMoving = false;
    }
    else
    {
      isMoving = true; 
    }
    //your code here
  }
  void erase()
  {
    fill(0);
    ellipse(myX,myY,7,7);
    //your code here
  }
  void move()
  {
    if(isMoving == true)
    {
      myY++;
    }
    //your code here
  }
  void wrap()
  {
    if(myY >590)
    {
      myY=(int)(Math.random()*100)-100;
      myX=(int)(Math.random()*600);
    }
    //your code here
  }
}


