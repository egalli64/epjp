set serveroutput on

begin
    dbms_output.put_line('Hello PL/SQL');
end;
/

declare
    v_width integer;
    v_height integer := 2;
    v_area integer := 6;
begin
    v_width := v_area / v_height;
    dbms_output.put_line('v_width = ' || v_width);
end;
/