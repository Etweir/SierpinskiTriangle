public void setup()
{
  size(1920,1080);
  background(250,250,250);
}
public void draw()
{
  sierpinski(100,1000,mouseX);
}
public void sierpinski(int x, int y, int len) 
{
   if(len <= 20)
   {
     noFill();
     triangle(x,y,x+(len/2),y-len,x+(len),y);
   }
   else
   {
     stroke(color(random(250),random(250),random(250)));
     sierpinski(x,y,len/2);
     sierpinski(x+len/2,y,len/2);
     sierpinski(x+len/4, y-len/2, len/2);
   }
}
