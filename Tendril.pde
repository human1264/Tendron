class Tendril
{
  public final static int SEG_LENGTH = 6; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = 5;
    myX = x;
    myY = y;
    myAngle = theta;
    myNumSegments = len;
  }
  public void show()
  {
    strokeWeight(0.5);
    stroke(133,51,97);
    int sx = myX;
    int sy = myY;
    if(myNumSegments < 2){
      for(int i = 0; i < myNumSegments; i++){
      int ex = sx + (int)(Math.cos(myAngle + Math.random()*1.8-0.9) * SEG_LENGTH);
      int ey = sy + (int)(Math.sin(myAngle + Math.random()*1.8-0.9) * SEG_LENGTH);
      stroke(133 + ey,51 + ex,97 + ex);
      line(sx,sy,ex,ey);
      sx = ex;
      sy = ey;
    }
    }
    else{
    for(int i = 0; i < myNumSegments; i++){
      int ex = sx + (int)(Math.cos(myAngle + Math.random()*0.9-0.45) * SEG_LENGTH);
      int ey = sy + (int)(Math.sin(myAngle + Math.random()*0.9-0.45) * SEG_LENGTH);
      stroke(133 + ex, 51 + ex,97 + ex);
      line(sx,sy,ex,ey);
      sx = ex;
      sy = ey;
    }
    Cluster a = new Cluster(myNumSegments/2, sx,sy);
    }
    
  }
  
}
