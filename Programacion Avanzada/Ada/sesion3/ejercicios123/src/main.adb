with Text_IO;
with Monitor;
use Monitor;

procedure Main is
   task type T;
   type taskArray is array( Integer range<>) of T;

   monitor:ProtectedObject(0,200);
   MyArray: taskArray(1.. 20);

   task body T is
   begin
      for i in 1..10 loop
         monitor.increment;
      end loop;
   end;

   value:Integer;
begin
   monitor.advise;
   monitor.get(value);
   Text_IO.Put_Line("Main var="&Integer'Image(value));
end Main;
