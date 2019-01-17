package Monitor is

   protected type ProtectedObject(initialValue,maximum: Integer) is
      entry get(value: out Integer);
      entry put(value: in Integer);
      entry increment;
      entry advise;
   private
      var:Integer:= initialValue;
      max:Integer:= maximum;
   end ProtectedObject;

end Monitor;
