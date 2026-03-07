-- liquibase formatted sql
-- changeset LOGGER:1772904353731 stripComments:false  logicalFilePath:introduce_logger\logger\object_grants\object_grants_as_grantor.logger.view.logger_logs_5_min.sql
-- sqlcl_snapshot src/database/logger/object_grants/object_grants_as_grantor.logger.view.logger_logs_5_min.sql:null:c40c48a69c156d46a48ec9297a6c67a8fbaff713:create

grant select on logger.logger_logs_5_min to ticketnexus;

