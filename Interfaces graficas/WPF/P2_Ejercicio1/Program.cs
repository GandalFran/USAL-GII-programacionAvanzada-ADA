using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P2_Ejercicio1
{
    class Acopladas
    {
        static void Main(string[] args)
        {
            observador obj = new observador();
            obj.funciona();
        }
    }

    public delegate void InformeAvanzeHandler(int x);

    class observador
    {
        public TrabajoDuro tb;
        public observador() {
            tb = new TrabajoDuro();
            tb.getInforme += InformeAvance;
         }
        public void funciona()
        {
            Console.WriteLine("Vamos a probar el informe");
            tb.ATrabajar();
            Console.WriteLine("Terminado");
        }
        public void InformeAvance(int x)
        {
            string str = String.Format("Ya llevamos el {0}", x);
            Console.WriteLine(str);
        }
    }
    class TrabajoDuro
    {
        public event InformeAvanzeHandler getInforme;

        int PocentajeHecho;
        public TrabajoDuro()
        {
            PocentajeHecho = 0;
        }
        public void ATrabajar()
        {
            int i;
            for (i = 0; i < 500; i++)
            {
                System.Threading.Thread.Sleep(1); //Hacemos el trabajo
                switch (i)
                {
                    case 125:
                        PocentajeHecho = 25;
                        if(null != getInforme)
                            this.getInforme(PocentajeHecho);
                        break;
                    case 250:
                        PocentajeHecho = 50;
                        if (null != getInforme)
                            this.getInforme(PocentajeHecho);
                        break;
                    case 375:
                        PocentajeHecho = 75;
                        if (null != getInforme)
                            this.getInforme(PocentajeHecho);
                        break;
                }
            }
        }
    }
}
