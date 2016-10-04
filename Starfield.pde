//your code here
NormalParticle[] bob;
void setup()
{
  //your code here
  size(1000,1000);
  bob = new NormalParticle[200];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new NormalParticle();


  }

  

}
void draw()
{
  //your code here
  background((int)Math.random()*255,100,100);
  for(int i = 0; i<bob.length; i++)
   {
     bob[i].show();
     bob[i].move();
   }


}
void mousePressed()
{
	redraw();
	bob = new NormalParticle[200];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }

}
class NormalParticle
{
  //your code here
  double nX, nY, nX2, nY2, nX3, nY3, nSpeed, nAngle;
  int nColor;
  NormalParticle()
  {
  nX=(int)Math.random()*200+500;
  nY=(int)Math.random()*200+500;
  nX2=(int)Math.random()*200+500;
  nY2=(int)Math.random()*200+500;
  nX3=(int)Math.random()*200+500;
  nY3=(int)Math.random()*200+500;
  nSpeed = 5;
  nAngle = Math.random()*(Math.PI*2);
  nColor = (int)(Math.random()*250);
  }

  void show()
  {
    fill(nColor,25,25);
    ellipse((float)nX,(float)nY,20,20);
    fill(25,nColor,25);
    ellipse((float)nX2,(float)nY2,20,20);
    fill(25,25,nColor);
    ellipse((float)nX3,(float)nY3,20,20);
    if(nX > 1000)
    {
    	nX=(int)Math.random()*200+500;
    	
    }
    if(nY > 1000)
    {
    	nY=(int)Math.random()*200+500;
    }
    if(nX2 > 1000)
    {
    	nX2=(int)Math.random()*200+500;
    }
    if(nY2 > 1000)
    {
    	nY2=(int)Math.random()*200+500;
    }
    if(nX3 > 1000)
    {
    	nX3=(int)Math.random()*200+500;
    }
    if(nY3 > 1000)
    {
    	nY3=(int)Math.random()*200+500;
    }
  }
  void move()
  {
    nX = nX+(Math.cos(nAngle)*nSpeed);
    nY = nY+(Math.sin(nAngle)*nSpeed);
    nX2 = nX2+(Math.cos(nAngle)*nSpeed/2);
    nY2 = nY2+(Math.sin(nAngle)*nSpeed/2);
    nX3 = nX3+(Math.cos(nAngle)*nSpeed/4);
    nY3 = nY3+(Math.sin(nAngle)*nSpeed/4);
  }



}
interface Particle
{
	//your code here
	//public void move() {}
}
class OddballParticle //uses an interface
{
  //your code here

}
class JumboParticle //uses inheritance
{
  //your code here
}

