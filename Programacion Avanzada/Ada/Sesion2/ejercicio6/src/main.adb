with Text_IO;

procedure Main is

   --Algoritmo cogido de https://gist.github.com/kalimalrazif/e468873a7b50ef52118a
   function MaxComunDivisor(m,n:Integer) return Integer is
   begin
      if (n = 0) then
         return m;
      else
         return MaxComunDivisor(n, m mod n);
      end if;
   end MaxComunDivisor;

   package Integer_IO is new Text_IO.Integer_IO(Integer);

   n1,n2,result: Integer;
begin
   Text_IO.Put("Introduzca num1: ");
   Integer_IO.Get(n1);
   Text_IO.New_Line;
   Text_IO.Put("Introduzca num2: ");
   Integer_IO.Get(n2);

   if(n1=0 or n2=0) then
      Text_IO.Put_Line("Error: entrada no valida");
      return;
   end if;

   if(n1 > n2) then
       result:=MaxComunDivisor(n1,n2);
   else
       result:=MaxComunDivisor(n2,n1);
   end if;

   Text_IO.New_Line;
   Text_IO.Put("Resultado: "&Integer'Image(result));

end Main;
