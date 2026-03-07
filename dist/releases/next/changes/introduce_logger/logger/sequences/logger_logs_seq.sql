-- liquibase formatted sql
-- changeset LOGGER:1772904354737 stripComments:false  logicalFilePath:introduce_logger\logger\sequences\logger_logs_seq.sql
-- sqlcl_snapshot src/database/logger/sequences/logger_logs_seq.sql:null:817e7c4709eb83300e6abd18f47ef13f039cb367:create

create sequence logger.logger_logs_seq minvalue 1 maxvalue 999999999999999999999999999 increment by 1 /* start with n */ cache 20 noorder
nocycle nokeep noscale global;

