-- liquibase formatted sql
-- changeset TICKETNEXUS:1772992585820 stripComments:false  logicalFilePath:tickets_table\ticketnexus\triggers\biu_tickets_tbl.sql
-- sqlcl_snapshot src/database/ticketnexus/triggers/biu_tickets_tbl.sql:null:15eb707aba1fad6c1a62787de40fdbc6d3f64fd4:create

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

