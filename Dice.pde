int num;
int sum;
int one,two,three,four,five,six;
void setup()
{
  size(500,600);
  noLoop();
}
void draw()
{
  background(0);
  for(int y= 5; y<= 485; y+=55)
  {
    for(int x=5; x<=485; x+=55)
    {
      Die white = new Die(x,y);
      white.show();
      white.roll();
    }
  }
  textSize(40);
   text("Sum = " +sum , 10,540);
   textSize(20);
   text("Total possible = 486", 10, 580);
   text("Expected sum = "+ 283.5, 10, 560);
   textSize(15);
   text("# of ones = " + one, 240,520);
   text("# of twos = " + two, 240,540);
   text("# of threes = " + three, 240,560);
   text("# of fours = " + four, 370,520);
   text("# of fives = " + five, 370,540);
   text("# of sixes = " + six, 370,560);
}
void mousePressed()
{
  sum = 0;
  one = 0;
  two = 0;
  three = 0;
  four = 0;
  five = 0;
  six = 0;
  
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;//variable declarations here
  Die(int x, int y) //constructor
  {
    myX= x;     //variable initializations here
    myY = y;
  }
  void roll()
  {
    num = (int)(Math.random()*6);
    fill(0);
    if(num<1)       //#1
    {
      ellipse(myX+25,myY+25,10,10);
      sum+=1;
      one+=1;
    }
    else if(num<2) //#2
    {
      ellipse(myX+25-15,myY+25-15,10,10);
      ellipse(myX+25+15,myY+25+15,10,10); 
      sum+=2;
      two+=1;
    }
    else if(num<3) //#3
    {
      ellipse(myX+25-15,myY+25-15,10,10);
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+25+15,myY+25+15,10,10);
      sum+=3;
      three+=1;
    }
    else if(num<4) //#4
    {
      ellipse(myX+25-15,myY+25+15,10,10);
      ellipse(myX+25-15,myY+25-15,10,10);
      ellipse(myX+25+15,myY+25-15,10,10);
      ellipse(myX+25+15,myY+25+15,10,10);
      sum+=4;
      four+=1;
    }
    else if(num<5) //#5
    {
      ellipse(myX+25-15,myY+25+15,10,10);
      ellipse(myX+25-15,myY+25-15,10,10);
      ellipse(myX+25+15,myY+25-15,10,10);
      ellipse(myX+25+15,myY+25+15,10,10);
      ellipse(myX+25,myY+25,10,10);
      sum+=5;
      five+=1;
    }
    else //#6
    {
      ellipse(myX+25-15,myY+25+15,10,10);
      ellipse(myX+25-15,myY+25,10,10);
      ellipse(myX+25-15,myY+25-15,10,10);
      ellipse(myX+25+15,myY+25-15,10,10);
      ellipse(myX+25+15,myY+25+15,10,10);
      ellipse(myX+25+15,myY+25,10,10);
      sum+=6;
      six+=1;
    }
    fill(255);
  }
  void show()
  {
    rect(myX,myY,50,50,10);
  }
}