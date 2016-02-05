int size = 500;
public void setup()
{
	size(600, 600);
	background(255);
	circlinski(300, 300, size);
}

public void draw()
{
	noFill();
	strokeWeight(2);
}

public void circlinski(int x, int y, int w)
{
	stroke((int)(Math.random()*254)+1, (int)(Math.random()*254)+1, (int)(Math.random()*254)+1);
	ellipse(x, y, w, w);
	if(w>=10)
	{
		ellipse(x, y, w, w);
		circlinski(x - (int)w/2, y, (int)(w/2));
		circlinski(x + (int)w/2, y, (int)(w/2));
		circlinski(x, y - (int)(w/2), (int)(w/2));
		circlinski(x, y + (int)(w/2), (int)(w/2));
	}
}

public void mousePressed()
{
	background(255);
	circlinski(300, 300, size);
}