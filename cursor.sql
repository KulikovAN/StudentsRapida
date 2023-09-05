--
Begin
  for r in (select mark from auto)  
    loop
      dbms_output.put_line(r.mark)  ;
    end loop ;
End ;
//

Declare 
    Cursor C_mark
    is
    SELECT mark FROM Auto ;
    R_name varchar2(32);
Begin
    Open C_mark ;
    Loop
      exit when c_mark%notfound ;
    fetch C_mark INTO R_NAME ;
    Dbms_Output.put_line(R_NAME) ;
    End loop;
    Close C_mark ;
End; 
