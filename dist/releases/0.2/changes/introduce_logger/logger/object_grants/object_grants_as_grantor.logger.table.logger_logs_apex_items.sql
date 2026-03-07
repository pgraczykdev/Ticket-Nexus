-- liquibase formatted sql
-- changeset LOGGER:1772904353382 stripComments:false  logicalFilePath:introduce_logger\logger\object_grants\object_grants_as_grantor.logger.table.logger_logs_apex_items.sql
-- sqlcl_snapshot src/database/logger/object_grants/object_grants_as_grantor.logger.table.logger_logs_apex_items.sql:null:933b4b4c7ebadb0cc0d4ecf159167d162b1e1e58:create

grant select on logger.logger_logs_apex_items to ticketnexus;

