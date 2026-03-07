-- liquibase formatted sql
-- changeset LOGGER:1772904353841 stripComments:false  logicalFilePath:introduce_logger\logger\object_grants\object_grants_as_grantor.logger.view.logger_logs_60_min.sql
-- sqlcl_snapshot src/database/logger/object_grants/object_grants_as_grantor.logger.view.logger_logs_60_min.sql:null:eea1ff56e895df68cf9286fc7778fe4d33531c16:create

grant select on logger.logger_logs_60_min to ticketnexus;

