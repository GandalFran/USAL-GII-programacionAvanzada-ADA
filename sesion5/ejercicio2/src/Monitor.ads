with Ada.Real_Time;
with Ada.Real_Time.Timing_Events;
use Ada.Real_Time;
use Ada.Real_Time.Timing_Events;

package Monitor is
   entradaJitterControl:Timing_Event;
   entradaPeriodo:Time_Span:=Ada.Real_Time.Milliseconds(3000);

   protected type codigoControlador is
      procedure generar(codigo: out Integer);
      procedure validar(valor: in Integer);
      procedure timerHandler(event: in out Timing_Event);
   private
      nextTime:Time;
      data:Integer:=1234;
   end codigoControlador;

end Monitor;
