with Text_IO;

procedure Main is

   value:Integer:=3765;
   fil, col: Positive;

   type Matrix is array(Positive range<>, Positive range<>) of Integer;

   package Positive_IO is new Text_IO.Integer_IO(Positive);

begin
   Text_IO.Put("Introduzca numero filas: ");
   Positive_IO.Get(fil);
   Text_IO.Put("Introduzca numero columnas: ");
   Positive_IO.Get(col);
   Text_IO.New_Line;

   declare MyMatrix: Matrix(1..fil, 1..col);

begin
-- give values
   for i in 1 .. fil loop
     for j in 1 .. col loop
        MyMatrix(i,j):=(value*( (i-1)*col + (j-1) ));
     end loop;
   end loop;

-- print
   Text_IO.Put_Line("Matriz generada: ");
   for i in 1 .. fil loop
     for j in 1 .. col loop
        Text_IO.Put(Integer'Image(MyMatrix(i,j))&" ");
     end loop;
     Text_IO.New_Line;
   end loop;
end;
end Main;
