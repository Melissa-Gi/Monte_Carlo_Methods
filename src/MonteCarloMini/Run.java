package MonteCarloMini;
public class Run 
{
    public static void main(String [] args)
    {
        String [] initialConditions = {"10000","1234530","1","1000","1000","10","0.5"};
        MonteCarloMinimizationParallel.main(initialConditions);
    }
}