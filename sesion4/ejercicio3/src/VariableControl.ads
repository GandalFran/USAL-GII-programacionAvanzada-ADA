package VariableControl is

   protected type VariableControlTipo is
      entry pedirTurno(turno: out Natural);
      entry entrarAtraccion(turno: in Natural);
      entry salirAtraccion;
   private
      taskId:Natural:=0;
      salidoPrimero:Boolean:=False;
      nDentroAtraccion:Natural:=0;
      nSalidoAtraccion:Natural:=0;
   end VariableControlTipo;

end VariableControl;
