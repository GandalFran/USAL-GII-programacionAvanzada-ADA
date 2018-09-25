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

namespace CalculadoraWpf
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();


            NumberZeroButton.Click  += NumberZeroButtonClickEvent;
            NumberOneButton.Click   += NumberOneButtonClickEvent;
            NumberTwoButton.Click   += NumberTwoButtonClickEvent;
            NumberThreeButton.Click += NumberThreeButtonClickEvent;
            NumberFourButton.Click  += NumberFourButtonClickEvent;
            NumberFiveButton.Click  += NumberFiveButtonClickEvent;
            NumberSixButton.Click   += NumberSixButtonClickEvent;
            NumberSevenButton.Click += NumberSevenButtonClickEvent;
            NumberEightButton.Click += NumberEightButtonClickEvent;
            NumberNineButton.Click  += NumberNineButtonClickEvent;

            AdditionButton.Click += AdditionButton_Click;
            SubstractionButton.Click += SubstractionButton_Click;
            MultiplicationButton.Click += MultiplicationButton_Click;
            DivisionButton.Click += DivisionButton_Click;
            EqualButton.Click += EqualButton_Click;
            EraseButton.Click += EraseButton_Click;

        }


        private void NumberZeroButtonClickEvent(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = ScreenLabel.Content + "0";
        }

        private void NumberOneButtonClickEvent(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = ScreenLabel.Content + "1";
        }

        private void NumberTwoButtonClickEvent(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = ScreenLabel.Content + "2";
        }

        private void NumberThreeButtonClickEvent(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = ScreenLabel.Content + "3";
        }

        private void NumberFourButtonClickEvent(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = ScreenLabel.Content + "4";
        }

        private void NumberFiveButtonClickEvent(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = ScreenLabel.Content + "5";
        }

        private void NumberSixButtonClickEvent(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = ScreenLabel.Content + "6";
        }

        private void NumberSevenButtonClickEvent(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = ScreenLabel.Content + "7";
        }

        private void NumberEightButtonClickEvent(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = ScreenLabel.Content + "8";
        }

        private void NumberNineButtonClickEvent(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = ScreenLabel.Content + "9";
        }

        private void AdditionButton_Click(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = ScreenLabel.Content + "+";
        }

        private void SubstractionButton_Click(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = ScreenLabel.Content + "-";
        }
        private void MultiplicationButton_Click(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = ScreenLabel.Content + "*";
        }
 
        private void DivisionButton_Click(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = ScreenLabel.Content + "/";
        }

        private void EqualButton_Click(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = "Algun dia implementare el resultado";
        }

        private void EraseButton_Click(object sender, RoutedEventArgs e)
        {
            ScreenLabel.Content = "";
        }
    }
}
