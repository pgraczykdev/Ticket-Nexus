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


-- sqlcl_snapshot {"hash":"e7dee12e206f32e0acb38259de83ff70ec2d3c3e","type":"TRIGGER","name":"BIU_LOGGER_APEX_ITEMS","schemaName":"LOGGER","sxml":""}