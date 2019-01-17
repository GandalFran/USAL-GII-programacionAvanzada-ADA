with Text_IO;

procedure Main is

   procedure ejercicio6 is
      inputValue:String(1..6);
      realValue:Float;
      size:Integer;
      package Float_IO is new Text_IO.Float_IO(Float);
   begin
      Text_IO.Put("Introduzca un numero: ");
      Text_IO.Get_Line(inputValue, size);

      realValue := Float'Value(inputValue(1..size));

      Text_IO.New_Line;
      Text_IO.Put("El valor introducido por 2 es: ");
      Float_IO.Put(realValue*2.0);
   end ejercicio6;

begin
   ejercicio6;
end Main;
