package body Monitor is

   protected body ProtectedObject is

      entry get(value: out Integer)
      when True is begin
         value:=var;
      end get;

      entry put(value: in Integer)
      when True is begin
         var:=value;
      end put;

      entry increment
      when True is begin
         var:= var + 1;
      end increment;

      entry advise
      when var=maximum is begin
         null;
      end advise;

   end ProtectedObject;

end Monitor;
