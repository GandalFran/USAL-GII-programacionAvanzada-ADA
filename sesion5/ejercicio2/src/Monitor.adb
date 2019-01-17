with Text_IO;
with Ada.Real_Time;
with Ada.Real_Time.Timing_Events;
use Ada.Real_Time;
use Ada.Real_Time.Timing_Events;

package body Monitor is

   protected body codigoControlador is
      procedure generar(codigo: out Integer) is begin
         delay 1.0;
         codigo:=data;
         Set_Handler(entradaJitterControl,entradaPeriodo,timerHandler'Access);
      end generar;

      procedure validar(valor: in Integer) is begin
         if valor = data then
            Text_IO.Put_Line("Codigo correcto");
            Timing_Events.Set_Handler(entradaJitterControl,entradaPeriodo,null);
         else
            Text_IO.Put_Line("Codigo incorrecto");
         end if;
      end validar;

      procedure timerHandler(event: in out Timing_Events.Timing_Event) is begin
         Text_IO.Put_Line("Alarma");
      end timerHandler;

   end codigoControlador;

end Monitor;
