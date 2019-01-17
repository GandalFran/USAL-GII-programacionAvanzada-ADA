with Text_IO;
with Ada.Real_Time;
with Calendar;
use Calendar;

procedure Main is
   task type sender;
   task type reciver  is
      entry msg;
   end reciver;

   start:Time:=Clock;
   senderTask: sender;
   reciverTask: reciver;

   senderDelay: Duration:= 10.0;
   reciverDelay: Duration:=15.0;
   senderDuration: Duration:= 120.0;

   task body sender is
   begin
   select
      delay senderDuration;
   then abort
      loop
         Text_IO.Put_Line("[SENDER][msg enviado]["&Calendar.Day_Duration'Image(Calendar.Seconds(Clock) - Calendar.Seconds(start))&"]");
         reciverTask.msg;
         delay senderDelay;
      end loop;
      end select;
      Text_IO.Put_Line("[SENDER][ended]["&Calendar.Day_Duration'Image(Calendar.Seconds(Clock) - Calendar.Seconds(start))&"]");
   end;

   task body reciver is
   begin
    loop
       select
         accept msg do
               Text_IO.Put_Line("[RECIVER][msg recibido]["&Calendar.Day_Duration'Image(Calendar.Seconds(Clock) - Calendar.Seconds(start))&"]");
         end msg;
       or
           delay reciverDelay;
           Text_IO.Put_Line("[RECIVER][ended]["&Calendar.Day_Duration'Image(Calendar.Seconds(Clock) - Calendar.Seconds(start))&"]");
           exit;
       end select;
    end loop;
   end;


begin
   null;
end Main;
