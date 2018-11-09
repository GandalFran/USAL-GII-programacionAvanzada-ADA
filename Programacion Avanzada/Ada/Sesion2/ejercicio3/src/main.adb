with Text_IO;


procedure Main is
   function getTargetFromValue(inputValue:Character) return Integer is
   begin
      case inputValue is
         when 'I' => return 1;
         when 'V' => return 5;
         when 'X' => return 10;
         when 'L' => return 50;
         when 'C' => return 100;
         when 'D' => return 500;
         when 'M' => return 1000;
         when 'i' => return 1;
         when 'v' => return 5;
         when 'x' => return 10;
         when 'l' => return 50;
         when 'c' => return 100;
         when 'd' => return 500;
         when 'm' => return 1000;
         when others => return -1;
      end case;
   end getTargetFromValue;

   size: Integer;
   input: String(1..100);
   finalValue: Integer:=0;

   type Association is
      record
         char:Character;
         value:Integer;
      end record;

    type AssociationArray is array( Positive range<>) of Association;

begin
    Text_IO.Put_Line("Introduzca numero romano: ");
    Text_IO.Get_Line(input, size);
declare
    MyArray: AssociationArray(1.. size);
begin
    for i in 1..size loop
      MyArray(i).char:=input(i);
      MyArray(i).value:=getTargetFromValue(input(i));
      if(MyArray(i).value=-1) then
            Text_IO.Put_Line("Error: numero mal construido");
            return;
      end if;
    end loop;

    finalValue:= MyArray(size).value;
    for i in reverse 1..(size-1) loop
         if(MyArray(i+1).value > MyArray(i).value) then
            finalValue:= finalValue - MyArray(i).value;
         else
            finalValue:= finalValue + MyArray(i).value;
         end if;
    end loop;

    Text_IO.Put_Line("Resultado: "&Integer'Image(finalValue));
end;
end Main;
