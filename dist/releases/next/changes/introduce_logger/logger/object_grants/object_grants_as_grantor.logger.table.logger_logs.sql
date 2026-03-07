-- liquibase formatted sql
-- changeset LOGGER:1772904353243 stripComments:false  logicalFilePath:introduce_logger\logger\object_grants\object_grants_as_grantor.logger.table.logger_logs.sql
-- sqlcl_snapshot src/database/logger/object_grants/object_grants_as_grantor.logger.table.logger_logs.sql:null:c12a9965d7508f33b90abef438a7c14248424c7f:create

grant delete on logger.logger_logs to ticketnexus;

grant select on logger.logger_logs to ticketnexus;

