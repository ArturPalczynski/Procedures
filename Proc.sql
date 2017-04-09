SET TERM ^ ;

create or alter procedure MOJA1 (
    ZLECENIE integer)
as
declare variable VARSTATUS integer;
begin

    varstatus = 0;

    for
        select zl.status from zlecenia zl
        where zl.zlecenie = :zlecenie
        into :varstatus
    do
        begin
            
            if (:varstatus = 10) then
            begin
               insert into zlecenia (ZLECENIE, STATUS, KOMENTARZ) values (999, :varstatus, 'KOPIA');
            end

        end

  suspend;
end^

SET TERM ; ^

/* Following GRANT statetements are generated automatically */

GRANT SELECT,INSERT ON ZLECENIA TO PROCEDURE MOJA1;

/* Existing privileges on this procedure */

GRANT EXECUTE ON PROCEDURE MOJA1 TO SYSDBA;