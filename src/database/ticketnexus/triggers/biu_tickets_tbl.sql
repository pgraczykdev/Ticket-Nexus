create or replace editionable trigger ticketnexus.biu_tickets_tbl before
    insert or update on ticketnexus.tickets_tbl
    for each row
begin
    if inserting then
        :new.created_on := current_timestamp;
        :new.created_by := coalesce(
            sys_context('APEX$SESSION', 'APP_USER'),
            user
        );
    end if;

    :new.updated_on := current_timestamp;
    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        user
    );
end;
/

alter trigger ticketnexus.biu_tickets_tbl enable;


-- sqlcl_snapshot {"hash":"2bd8f83461c3eb3d5917151105c0ab63302c25a0","type":"TRIGGER","name":"BIU_TICKETS_TBL","schemaName":"TICKETNEXUS","sxml":""}