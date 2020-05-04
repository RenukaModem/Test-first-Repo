@isTest
public class TestMathCalculator 
{
    @isTest
    static void testCalculator()
    {
        MathCalculator mc = new MathCalculator();
        System.assertEquals(5, mc.add(2, 3));
        System.assertEquals(3, mc.minus(7, 4));
        System.assertEquals(18, mc.multiply(3, 6));
    }
}