-- liquibase formatted sql
-- changeset LOGGER:1772904354626 stripComments:false  logicalFilePath:introduce_logger\logger\sequences\logger_apx_items_seq.sql
-- sqlcl_snapshot src/database/logger/sequences/logger_apx_items_seq.sql:null:62202ca45c66dfec672f8a03e5c48b4213947707:create

create sequence logger.logger_apx_items_seq minvalue 1 maxvalue 999999999999999999999999999 increment by 1 /* start with n */ cache 20
noorder nocycle nokeep noscale global;

