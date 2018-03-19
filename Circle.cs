using System;

namespace ClassLibrary1
{
    [Serializable]
    class Circle : Shape
    {
        public Circle()
        {
        }
        public Circle(int r)
        {
            double d = Math.PI * Math.Pow(r, 2);
            Console.WriteLine(String.Format("Площадь круга по радиусу равна = {0:0.00} кв. см", d));
        }
    }
}
