using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace MyFirstWPFApp
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private static int ButtonState = 0;

        public MainWindow()
        {
            InitializeComponent();

            etiqueta.Content = "Hola";
            etiqueta.Foreground = Brushes.Blue;

            boton.Click += boton_clik;
            boton.Click += boton_clik2;
        }

        private void boton_clik(object sender, RoutedEventArgs e)
        {
            if (etiqueta.Content.Equals("Adios"))
            {
                etiqueta.Content = "Hola";
                etiqueta.Foreground = Brushes.White;
            }
            else {
                etiqueta.Content = "Adios";
                etiqueta.Foreground = Brushes.Black;
            }
        }

        private void boton_clik2(object sender, RoutedEventArgs e)
        {
            if (this.Background.Equals(Brushes.DeepSkyBlue))
            {
                this.Background = Brushes.Firebrick;
            }
            else
            {
                this.Background = Brushes.DeepSkyBlue;
            }
        }
    }
}
