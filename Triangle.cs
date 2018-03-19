using System;

namespace ClassLibrary1
{
    [Serializable]
    class Triangle : Shape
    {
        public Triangle()
        {
        }

        public Triangle(int a, int b, int c)
        {
            double p = (a + b + c) / 2;

            double S = Math.Sqrt(p * (p - a) * (p - b) * (p - c));

            if (Math.Pow(c, 2) == (Math.Pow(a, 2) + Math.Pow(b, 2)))
            {
                Console.WriteLine(String.Format("Площадь этого прямоугольного треугольника по 3 сторонам равна = {0:0.00}", S));
            }
            else
            {
                if (Math.Pow(b, 2) == Math.Pow(a, 2) + Math.Pow(c, 2))
                {
                    Console.WriteLine(String.Format("Площадь этого прямоугольного треугольника по 3 сторонам равна = {0:0.00}", S));
                }
                else
                {
                    if (Math.Pow(a, 2) == Math.Pow(b, 2) + Math.Pow(c, 2))
                    {
                        Console.WriteLine(String.Format("Площадь этого прямоугольного треугольника по 3 сторонам равна = {0:0.00}", S));
                    }
                    else Console.WriteLine(String.Format("Площадь этого треугольника по 3 сторонам равна = {0:0.00}", S));
                }
            }


        }
    }
}
