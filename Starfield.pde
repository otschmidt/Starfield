//your code here
NormalParticle[] bob;
int x = 0;
int y = 0;
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
  //background((int)Math.random()*255,100,100);
  background(0);
  for(int i = 0; i<bob.length; i++)
   {
     bob[i].show();
     bob[i].move();
   }


}
void mousePressed()
{
	
	bob = new NormalParticle[200];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
  if(x>1000)
  {
  	bob = new NormalParticle[200];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
  }

}
class NormalParticle
{
  //your code here
  double nX, nY, nX2, nY2, nX3, nY3, nSpeed, nAngle, lX, lY, lX2, lY2, lX3, lY3;
  int nColor;
  NormalParticle()
  {
  /*lX=(int)Math.random()*200+500;
  lY=(int)Math.random()*200+500;
  lX2=(int)Math.random()*200+500;
  lY2=(int)Math.random()*200+500;
  lX3=(int)Math.random()*200+500;
  lY3=(int)Math.random()*200+500;
  */
  lX=500;
  lY = 500;
  nX=(int)Math.random()*200+500;
  nY=(int)Math.random()*200+500;
  nX2=(int)Math.random()*200+500;
  nY2=(int)Math.random()*200+500;
  nX3=(int)Math.random()*200+500;
  nY3=(int)Math.random()*200+500;
  nSpeed = 2;
  nAngle = Math.random()*(Math.PI*2);
  nColor = (int)(Math.random()*250);

  }

  void show()
  {
  	strokeWeight(5);
    stroke(nColor,25,25);
    line((float)lX, (float)lY, (float)nX, (float)nY);
    //fill(nColor,25,25);
    //ellipse((float)nX,(float)nY,20,20);
    stroke(25,nColor,25);
    line((float)lX2, (float)lY2, (float)nX2, (float)nY2);
    //fill(25,nColor,25);
    //ellipse((float)nX2,(float)nY2,20,20);
    stroke(25,25,nColor);
    line((float)lX3, (float)lY3, (float)nX3, (float)nY3);
    //fill(25,25,nColor);
    //ellipse((float)nX3,(float)nY3,20,20);
    
    
    if(10 > nX - lX)
    {
    	nX=(int)Math.random()*200+500;
    	
    }
    if(10 > nY - lY)
    {
    	nY=(int)Math.random()*200+500;
    }
    if(10 > nX2 - lX2)
    {
    	nX=(int)Math.random()*200+500;
    	
    }
    if(10 > nY2 - lY2)
    {
    	nY=(int)Math.random()*200+500;
    }
    if(10 > nX3 - lX3)
    {
    	nX=(int)Math.random()*200+500;
    	
    }
    if(10 > nY3 - lY3)
    {
    	nY=(int)Math.random()*200+500;
    }
    /*if(nX < 0)
    {
    	nX =(int)Math.random()*200+500;
    }
    if(nY < 0)
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
    if(nX2 < 0)
    {
    	nX2 =(int)Math.random()*200+500;
    }
    if(nY2 < 0)
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
    if(nX3 < 0)
    {
    	nX3 =(int)Math.random()*200+500;
    }
    if(nY3 < 0)
    {
    	nY3=(int)Math.random()*200+500;
    }
    */
    
  }
  void move()
  {
  	

    nX = nX+(Math.cos(nAngle)*nSpeed);
    nY = nY+(Math.sin(nAngle)*nSpeed);
    nX2 = nX2+(Math.cos(nAngle)*nSpeed/2);
    nY2 = nY2+(Math.sin(nAngle)*nSpeed/2);
    nX3 = nX3+(Math.cos(nAngle)*nSpeed/4);
    nY3 = nY3+(Math.sin(nAngle)*nSpeed/4);
    lX = nX -(Math.cos(nAngle)*nSpeed*20);
    lY = nY- (Math.sin(nAngle)*nSpeed*20);
    lX2 = nX2 -(Math.cos(nAngle)*nSpeed*50);
    lY2 = nY2- (Math.sin(nAngle)*nSpeed*50);
    lX3 = nX3 -(Math.cos(nAngle)*nSpeed*50);
    lY3 = nY3- (Math.sin(nAngle)*nSpeed*50);
    if(nX > 1000)
    {
    	nX = nX+(Math.cos(nAngle)*nSpeed /4);
    	
    }
    if(nY > 1000)
    {
    	nY = nY+(Math.sin(nAngle)*nSpeed/4);
    }
    if(nX2 > 1000)
    {
    	nX2 = nX2+(Math.cos(nAngle)*nSpeed/4);
    }
    if(nY2 > 1000)
    {
    	nY2 = nY2+(Math.sin(nAngle)*nSpeed/4);
    }
    if(nX3 > 1000)
    	
    {
    	nX3 = nX3+(Math.cos(nAngle)*nSpeed/4);
    }
    if(nY3 > 1000)
    {
    	nY3 = nY3+(Math.sin(nAngle)*nSpeed/4);
    }
  }
  	
  


}
interface Particle
{
	//your code here
	public void move();
	public void show();
}
class OddballParticle //uses an interface
{
  //your code here

}
class JumboParticle //uses inheritance
{
  //your code here
}

