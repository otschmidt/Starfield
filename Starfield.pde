//your code here
NormalParticle bob;
void setup()
{
	//your code here
	size(500,500);
	bob = new NormalParticle();
	/*
	if(int i; i<=20, i++)
	{
	
	}
	*/

}
void draw()
{
	//your code here
	background(0);
	bob.show();
	bob.move();

}
class NormalParticle
{
	//your code here
	double nX, nY, nSpeed, nAngle;
	int nColor;
	NormalParticle()
	{
	nX=250;
	nY=250;
	nSpeed = 10;
	nAngle = 0;
	nColor = (int)(Math.random()*250);
	}

	void show()
	{
		fill(nColor,nColor,nColor);
		ellipse(nX,nY,20,20);
	}
	void move()
	{
		nX = (int)(Math.cos(nX)*nSpeed);
		nY = (int)(Math.sin(nY)*nSpeed);
	}



}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

