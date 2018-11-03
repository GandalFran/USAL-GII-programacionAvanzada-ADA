using System;
using System.Windows;
using System.Windows.Controls;
namespace Proyectos.ElSegundo
{
    class Basica
    {
        [STAThread]
        public static void Main()
        {
            Window win = new Window();
            win.Title = "Primer Programa";
            win.Show();

            Label etiqueta = new Label();
            etiqueta.Content = "Hola Mundo";

            win.Content = etiqueta;

            Console.WriteLine("Buenas mozo");

            Application app = new Application();
            app.Run();

            Console.WriteLine("Adios mozo");
        }

    }
}