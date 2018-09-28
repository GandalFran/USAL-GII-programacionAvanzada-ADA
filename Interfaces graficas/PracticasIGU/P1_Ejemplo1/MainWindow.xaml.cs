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

namespace P1_Ejemplo1
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            InvertButton.Click += InvertButton_Click;
            MayusButton.Click += MayusButton_Click;
            RandomColorButton.Click += RandomColorButton_Click;
        }

        private void RandomColorButton_Click(object sender, RoutedEventArgs e)
        {
            Random r = new Random();
            SolidColorBrush[] brushesArray = { Brushes.AliceBlue, Brushes.DeepPink, Brushes.Gold, Brushes.Yellow, Brushes.Tomato, Brushes.SteelBlue, Brushes.Aquamarine, Brushes.CornflowerBlue, Brushes.DarkViolet, Brushes.Gainsboro, Brushes.LightCoral };
 
            int rNumber = r.Next();
            int arraySize = brushesArray.Length;
            int index = rNumber % arraySize;

            this.Background = brushesArray[index];
        }

        private void InvertButton_Click(object sender, RoutedEventArgs e)
        {
            String text = InputTextBox.Text;
            String output = "";
            
            for(int i=text.Length-1; i>=0; i--){
                output += text[i];
            }

            OutputLabel.Content = output;
        }

        private void MayusButton_Click(object sender, RoutedEventArgs e)
        {
            String output = InputTextBox.Text.ToUpper();

            OutputLabel.Content = output;
        }
    }
}
