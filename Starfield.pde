//your code here
NormalParticle[] bob;
void setup()
{
	//your code here
	size(500,500);
	bob = new NormalParticle[20];
	for(int i = 0; i < bob.length; i++)
	{
		bob[i] = new NormalParticle();


	}

	

}
void draw()
{
	//your code here
	background(0);
	for(int i = 0; i<bob.length; i++)
 	{
 		bob[i].show();
 		bob[i].move();
 	}


}
class NormalParticle
{
	//your code here
	double nX, nY, nSpeed, nAngle;
	int nColor;
	NormalParticle()
	{
	nX=700;
	nY=700;
	nSpeed = 50;
	nAngle = 0;
	nColor = (int)(Math.random()*250);
	}

	void show()
	{
		fill(nColor,nColor,nColor);
		ellipse((float)nX,(float)nY,50,50);
	}
	void move()
	{
		nX = (Math.cos(nX)*nSpeed);
		nY = (Math.sin(nY)*nSpeed);
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

