with Text_IO;

procedure Main is
   task type sensor  is
      entry sensor1(input: in Integer);
      entry sensor2(input: in Integer; output: out Integer);
   end sensor;

   task body sensor is
   begin
      loop
         select
            accept sensor1(input: in Integer) do
               Text_IO.Put_Line("sensor1 input: "&Integer'Image(input));
            end sensor1;
         or
            accept sensor2(input: in Integer; output: out Integer) do
               output := input*2;
               Text_IO.Put_Line("sensor2 input: "&Integer'Image(input));
               Text_IO.Put_Line("sensor2 output: "&Integer'Image(output));
            end sensor2;
         or
            terminate;
         end select;
      end loop;
   end sensor;


   t1:sensor;
   var1,var2:Integer;
begin
   var1:=1;

   t1.sensor1(var1);
   t1.sensor2(var1,var2);

   Text_IO.Put_Line("main var1: "&Integer'Image(var1));
   Text_IO.Put_Line("main var2: "&Integer'Image(var2));
end Main;
