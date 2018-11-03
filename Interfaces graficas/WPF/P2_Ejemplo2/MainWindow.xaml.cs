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

namespace P2_Ejemplo2
{


    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private bool isLabelActive = false;
        private Label l;

        public MainWindow()
        {
            InitializeComponent();
            l = new Label();
            MainGrid.Children.Add(l);

            this.MouseMove += MainWindow_MouseMove;
            this.KeyDown += MainWindow_KeyDown;
            this.KeyDown += MainWindow_KeyDown1;
            this.KeyDown += MainWindow_KeyDown2;
        }

        private void MainWindow_KeyDown2(object sender, KeyEventArgs e)
        {
            if (Grid.GetColumn(MoviblePanel) == Grid.GetColumn(MovibleBook) && Grid.GetRow(MoviblePanel) == Grid.GetRow(MovibleBook))
            {
                l.Content = "YOU WIN";
                l.Foreground = Brushes.Red;
                isLabelActive = true;
            }else if (isLabelActive){
                this.l.Content = "";
                isLabelActive = false;
            }
        }

        private void MainWindow_KeyDown1(object sender, KeyEventArgs e)
        {
            int LastColumn, LastRow, NextRow, NextColumn;

            NextColumn = LastColumn = Grid.GetColumn(MovibleBook);
            NextRow = LastRow = Grid.GetRow(MovibleBook);

            switch (e.Key)
            {
                case Key.A:
                    NextRow = LastRow;
                    NextColumn = (LastColumn - 1 < 0) ? (MainGrid.ColumnDefinitions.Count - 1) : (LastColumn - 1);
                    break;
                case Key.D:
                    NextRow = LastRow;
                    NextColumn = (LastColumn + 1 >= MainGrid.ColumnDefinitions.Count) ? (0) : (LastColumn + 1);
                    break;
                case Key.W:
                    NextColumn = LastColumn;
                    NextRow = (LastRow - 1 < 0) ? (MainGrid.RowDefinitions.Count - 1) : (LastRow - 1);
                    break;
                case Key.S:
                    NextColumn = LastColumn;
                    NextRow = (LastRow + 1 >= MainGrid.RowDefinitions.Count) ? (0) : (LastRow + 1);
                    break;
            }


            Grid.SetColumn(MovibleBook, NextColumn);
            Grid.SetRow(MovibleBook, NextRow);
        }

        private void MainWindow_KeyDown(object sender, KeyEventArgs e)
        {
            int LastColumn, LastRow, NextRow, NextColumn;

            NextColumn = LastColumn = Grid.GetColumn(MoviblePanel);
            NextRow = LastRow = Grid.GetRow(MoviblePanel);

            switch (e.Key) {
                case Key.Left:
                    NextRow = LastRow;
                    NextColumn = (LastColumn - 1 < 0) ? (MainGrid.ColumnDefinitions.Count - 1) : (LastColumn - 1);
                    break;
                case Key.Right:
                    NextRow = LastRow;
                    NextColumn = (LastColumn + 1 >= MainGrid.ColumnDefinitions.Count) ? (0) : (LastColumn + 1);
                    break;
                case Key.Up:
                    NextColumn = LastColumn;
                    NextRow = (LastRow - 1 < 0) ? (MainGrid.RowDefinitions.Count - 1) : (LastRow - 1);
                    break;
                case Key.Down:
                    NextColumn = LastColumn;
                    NextRow = (LastRow + 1 >= MainGrid.RowDefinitions.Count) ? (0) : (LastRow + 1);
                    break;
            }


            Grid.SetColumn(MoviblePanel, NextColumn);
            Grid.SetRow(MoviblePanel, NextRow);

        }

        private void MainWindow_MouseMove(object sender, MouseEventArgs e)
        {
            RotateTransform Rt = (RotateTransform) MoviblePanel.RenderTransform;
            Rt.Angle += 10;
            MoviblePanel.RenderTransform = Rt;
        }
    }
}
