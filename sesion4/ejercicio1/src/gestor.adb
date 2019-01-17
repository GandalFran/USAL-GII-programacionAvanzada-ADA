with Text_IO;

package body gestor is

   protected body GestorType is
      entry startRead
        when not isWriting and (isReadTime or startWrite'count = 0) is begin
         if startWrite'count = 0 then
           isReadTime := True;
         end if;
         nReaders := nReaders + 1;
         Text_IO.Put_Line("[MONITOR][Reading mode "&Natural'Image(nReaders)&"]");
      end startRead;

      entry startWrite
      when nReaders=0 and not isWriting and (not isReadTime or startRead'count = 0) is begin
         if startRead'count = 0 then
           isReadTime := False;
         end if;
         isWriting := True;
         Text_IO.Put_Line("[MONITOR][Writing mode]");
      end startWrite;

      procedure terminateRead is begin
         isReadTime:= False;
         nReaders:= nReaders - 1;
         Text_IO.Put_Line("[MONITOR][Finished read mode"&Natural'Image(nReaders)&"]");
      end terminateRead;

      procedure terminateWrite is begin
         isReadTime:=True;
         isWriting:=False;
         Text_IO.Put_Line("[MONITOR][Finished write mode]");
      end terminateWrite;

   end Gestortype;

end gestor;
