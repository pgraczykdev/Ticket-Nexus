-- liquibase formatted sql
-- changeset LOGGER:1772904353509 stripComments:false  logicalFilePath:introduce_logger\logger\object_grants\object_grants_as_grantor.logger.table.logger_prefs.sql
-- sqlcl_snapshot src/database/logger/object_grants/object_grants_as_grantor.logger.table.logger_prefs.sql:null:2690a5394baf99835805f2d58c5f4985693a6351:create

grant select on logger.logger_prefs to ticketnexus;

grant update on logger.logger_prefs to ticketnexus;

