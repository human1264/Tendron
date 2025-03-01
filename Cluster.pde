public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        double ang = Math.random()*6.28;
        for(int i = 0; i < NUM_STEMS + (int)(Math.random()*4); i++){
          Tendril a = new Tendril(len, ang + (i * 0.9) + Math.random(), x,y);
          a.show();
        }
        
    }
}
