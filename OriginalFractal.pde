public void setup()
{
	size(800,800);
	background(0);
}
public void draw()
{
	fractal(400,400,400);
}
public void fractal(int x, int y, int big)
{
		stroke(255);
		fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
		beginShape();
		vertex(x,y-big);
		vertex(x+big,y);
		vertex(x,y+big);
		vertex(x-big,y);
		vertex(x,y-big);
		endShape();
		rect(x-big/2,y-big/2,big,big);
		if(big>20)
		{
			fractal(x,y,big-20);
			fractal(x-big/2,y-big/2,big/2-20);
			fractal(x+big/2,y-big/2,big/2-20);
			fractal(x-big/2,y+big/2,big/2-20);
			fractal(x+big/2,y+big/2,big/2-20);
		}
}