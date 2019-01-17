with Text_IO;

procedure Main is
   procedure ejercicio1 is
      value:Natural;
      package Natural_IO is new Text_IO.Integer_IO(Natural);
   begin
         Text_IO.Put_Line("Introduzca un numero: ");
         Natural_IO.Get(value);
         Text_IO.Put("El enetero introducido es: ");
         Natural_IO.Put(value);
   end ejercicio1;

   procedure ejercicio2 is
      subtype MyType is Integer range 1 .. 10;
      value:MyType;

      package MyType_IO is new Text_IO.Integer_IO(MyType);
   begin
         Text_IO.Put_Line("Introduzca un numero: ");
         MyType_IO.Get(value);
   end ejercicio2;

begin
   ejercicio1;
   Text_IO.New_Line;
   ejercicio2;
end Main;
