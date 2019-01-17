package gestor is

   protected type GestorType is
      entry startRead;
      entry startWrite;
      procedure terminateRead;
      procedure terminateWrite;
   private
      isWriting:Boolean:= False;
      isReadTime:Boolean:= False;
      nReaders:Natural:= 0;
   end GestorType;

end gestor;
