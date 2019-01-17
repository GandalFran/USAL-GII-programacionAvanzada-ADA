with VariableControl;
use VariableControl;
with Text_IO;

procedure Main is

   task type clienteAtraccion;
   type clienteAtraccionArray is array( Integer range<>) of clienteAtraccion;

   delayAtraccion:Duration := 5.0;
   variableControl:VariableControlTipo;
   clientesAtraccion:clienteAtraccionArray(1..40);

   task body clienteAtraccion is
       turno:Natural:=0;
   begin
       variableControl.pedirTurno(turno);
      variableControl.entrarAtraccion(turno);
      delay 5.0;
       variableControl.salirAtraccion;
   end;

begin
   null;
end Main;
