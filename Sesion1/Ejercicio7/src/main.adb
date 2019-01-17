with Text_IO;

procedure Main is

   procedure ejercicio7 is
      type Week is (lunes,martes,miercoles,jueves,viernes,sabado,domingo);
      var:Week;
      package Week_IO is new Text_IO.Enumeration_IO(Week);
   begin
      var := Week'First;
      loop
         Text_IO.New_Line;
         Week_IO.Put(var);
         exit when var=Week'Last;
         var := Week'Succ(var);
      end loop;
   end ejercicio7;

begin
   ejercicio7;
end Main;
