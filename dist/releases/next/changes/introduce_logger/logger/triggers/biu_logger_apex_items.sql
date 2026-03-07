-- liquibase formatted sql
-- changeset LOGGER:1772904356044 stripComments:false  logicalFilePath:introduce_logger\logger\triggers\biu_logger_apex_items.sql
-- sqlcl_snapshot src/database/logger/triggers/biu_logger_apex_items.sql:null:5806dfd6ae612409f1f808c39ee8831198d3e951:create

create or replace editionable trigger logger.biu_logger_apex_items before
    insert or update on logger.logger_logs_apex_items
    for each row
begin
  $if $$logger_no_op_install $then

    null;
  $else
    :new.id := logger_apx_items_seq.nextval;
  $end
end;
/

alter trigger logger.biu_logger_apex_items enable;

