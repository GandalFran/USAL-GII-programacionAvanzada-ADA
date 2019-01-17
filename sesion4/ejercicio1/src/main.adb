with Text_IO;
with Ada.Task_Identification;
with gestor;
use gestor;

procedure Main is

   task type readTask;
   task type writeTask;
   type ReadTaskArray is array( Integer range<>) of readTask;
   type WriteTaskArray is array( Integer range<>) of writeTask;

   g:GestorType;

   readArray: ReadTaskArray(1..4);
   writeArray: WriteTaskArray(1..10);

   task body readTask is
   begin
      for i in 1..2 loop
         --Text_IO.Put_Line("[READ]["&Ada.Task_Identification.Image(Ada.Task_Identification.Current_Task)&"][Waiting for read]");
         g.startRead;
         --Text_IO.Put_Line("[READ]["&Ada.Task_Identification.Image(Ada.Task_Identification.Current_Task)&"][Terminate read]");
         g.terminateRead;
      end loop;
   end;

   task body writeTask is
   begin
      for i in 1..2 loop
         --Text_IO.Put_Line("[WRITE]["&Ada.Task_Identification.Image(Ada.Task_Identification.Current_Task)&"][Waiting for write]");
         g.startWrite;
         --Text_IO.Put_Line("[WRITE]["&Ada.Task_Identification.Image(Ada.Task_Identification.Current_Task)&"][Terminate write]");
         g.terminateWrite;
      end loop;
   end;

begin
   --  Insert code here.
   null;
end Main;
