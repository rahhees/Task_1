using System.Threading.Channels;

class Arithmetic
{
    public static void Main()
    {
        Console.WriteLine("Enter the first  number");
        double num1 = Convert.ToDouble(Console.ReadLine());

        Console.WriteLine("Enter the second number");
        double num2 = Convert.ToDouble(Console.ReadLine());

        double sum = num1 + num2;
        double diff = num1 - num2;
        double product = num1 * num2;
        double division = num1 / num2;

        Console.WriteLine("Results:");
        Console.WriteLine($"Sum of two numbers{num1}+{num2}={sum}");
        Console.WriteLine($"Difference of two numbers {num1}-{num2}={diff}");
        Console.WriteLine($"Product of two numbers {num1}* {num2}={product}");
        Console.WriteLine($"Division of two numbers {num1}/{num2}={division}");
    }
}