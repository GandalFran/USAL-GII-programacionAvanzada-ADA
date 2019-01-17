with Text_IO;

package body VariableControl is

   protected body VariableControlTipo is
      entry pedirTurno(turno: out Natural)
        when nDentroAtraccion<4 is begin

         turno:=taskId;
         taskId:=taskId+1;

         nDentroAtraccion:=nDentroAtraccion+1;
      end pedirTurno;

      entry entrarAtraccion(turno:in Natural)
        when nDentroAtraccion=4 is begin
         Text_IO.Put_Line("Que divertido!!!"&Natural'Image(turno));
      end entrarAtraccion;

      entry salirAtraccion
        when salirAtraccion'Count=4 or salidoPrimero is begin
         salidoPrimero:= True;
         nSalidoAtraccion:= nSalidoAtraccion + 1;
         if nSalidoAtraccion = 4 then
            nSalidoAtraccion := 0;
            nDentroAtraccion := 0;
            salidoPrimero:= FALSE;
         end if;
      end salirAtraccion;


   end VariableControlTipo;

end VariableControl;
