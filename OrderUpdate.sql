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
end