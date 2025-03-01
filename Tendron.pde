public void setup()
{
  size(800,800);  
  background(0,0,0);
  noLoop();
}

public void draw()
{
  background(0);
  Cluster c = new Cluster(30, 400,400); 
}
public void mousePressed()
{
  redraw();
}
