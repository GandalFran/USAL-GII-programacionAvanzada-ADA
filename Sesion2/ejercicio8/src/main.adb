with Text_IO;
with Ada.Command_Line;

procedure Main is

begin
   Text_IO.Put_Line("Este programa se llama "&Ada.Command_Line.Command_Name&" y ha recibido "&Integer'Image(Ada.Command_Line.Argument_Count)&". Los argumentos son: ");
   for i in 1..Ada.Command_Line.Argument_Count loop
      Text_IO.Put_Line(Ada.Command_Line.Argument(i));
   end loop;
end Main;
