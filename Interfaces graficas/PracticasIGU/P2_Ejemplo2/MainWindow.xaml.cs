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
        private int NumberOfRows = 8;
        private int NumberOfColumns = 8;

        public MainWindow()
        {
            InitializeComponent();

            this.MouseMove += MainWindow_MouseMove;
            this.KeyDown += MainWindow_KeyDown;
        }

        private void MainWindow_KeyDown(object sender, KeyEventArgs e)
        {
            int LastColumn, LastRow, NextRow, NextColumn;
            
            LastColumn = Grid.GetColumn(MoviblePanel);
            LastRow = Grid.GetRow(MoviblePanel);
            NextRow = NextColumn = 0;

            switch (e.Key) {
                case Key.Left:
                    NextRow = LastRow;
                    NextColumn = (LastColumn - 1 < 0) ? (NumberOfColumns-1) : (LastColumn - 1);
                    break;
                case Key.Right:
                    NextRow = LastRow;
                    NextColumn = (LastColumn + 1 >= NumberOfColumns) ? (0) : (LastColumn + 1);
                    break;
                case Key.Up:
                    NextColumn = LastColumn;
                    NextRow = (LastRow - 1 < 0) ? (NumberOfRows - 1) : (LastRow - 1);
                    break;
                case Key.Down:
                    NextColumn = LastColumn;
                    NextRow = (LastRow + 1 >= NumberOfRows) ? (0) : (LastRow + 1);
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
