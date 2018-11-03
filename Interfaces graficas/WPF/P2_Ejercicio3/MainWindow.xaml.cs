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

namespace P2_Ejercicio3
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private string strFormat = "{0,-30} {1,-15} {2,-15} {3,-15}";
        public MainWindow()
        {
            
            InitializeComponent();

            TypesTextBlock.Text = String.Format(strFormat,"Evento","Sender","Fuente","Fuente Original");
            UIElement[] elementos = { this, MyGrid, TitleTextBlock, MyButton, TypesTextBlock, MyScroll, MyStackPanel };

            foreach (UIElement i in elementos)
            {
                i.PreviewKeyDown += gestorGlobal;
                i.PreviewKeyUp += gestorGlobal;
                i.PreviewTextInput += gestorGlobal;
                i.KeyDown += gestorGlobal;
                i.KeyUp += gestorGlobal;
                i.TextInput += gestorGlobal;
                i.PreviewMouseDown += gestorGlobal;
                i.PreviewMouseUp += gestorGlobal;
                i.MouseDown += gestorGlobal;
                i.MouseUp += gestorGlobal;
            }
            MyButton.Click += gestorGlobal;
        }

        void gestorGlobal(Object sender, RoutedEventArgs e)
        {
            TextBlock linea = new TextBlock();
            linea.Text = String.Format(strFormat, e.RoutedEvent.Name, nombreobjeto(sender), nombreobjeto(e.Source), nombreobjeto(e.OriginalSource)); MyStackPanel.Children.Add(linea); MyScroll.ScrollToBottom();
        }
        string nombreobjeto(Object obj)
        {
            string[] parseada = obj.GetType().ToString().Split('.');
            return parseada[parseada.Length - 1];
        }
    }
}
