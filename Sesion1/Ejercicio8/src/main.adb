with Text_IO;

procedure Main is

   procedure ejercicio8 is
      addition:Integer:=0;
      package Integer_IO is new Text_IO.Integer_IO(Integer);
   begin
      for i in 1 .. 100 loop
         if (i mod 2) = 0 then
           addition := addition + i;
         end if;
      end loop;

      Text_IO.Put("La suma de los elementos pares de 1 a 100 es: ");
      Integer_IO.Put(addition);
      Text_IO.New_Line;
   end ejercicio8;

begin
   ejercicio8;
end Main;
