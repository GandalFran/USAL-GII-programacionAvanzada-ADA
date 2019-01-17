with Text_IO;
with Ada.Real_Time;
with Monitor;
use Monitor;
use Ada.Real_Time;

procedure Main is
   package Integer_IO is new Text_IO.Integer_IO(Integer);
   task type T;

   myTask:T;
   controlador:codigoControlador;

   task body T is
      codigo:Integer;
      nextRelease:Time;
      releaseInterval:constant Time_Span:=Milliseconds(5000);
   begin
      nextRelease:=Clock;
      loop
         delay until nextRelease;
         nextRelease:=nextRelease+releaseInterval;
         controlador.generar(codigo);
         Text_IO.Put_Line("Introduzca el siguiente codigo: "&Integer'Image(codigo));
      end loop;
   end;

   codigo:Integer;
begin
   loop
      Integer_IO.Get(codigo);
      controlador.validar(codigo);
   end loop;
end Main;
