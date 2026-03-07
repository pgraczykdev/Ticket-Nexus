-- liquibase formatted sql
-- changeset LOGGER:1772904353622 stripComments:false  logicalFilePath:introduce_logger\logger\object_grants\object_grants_as_grantor.logger.table.logger_prefs_by_client_id.sql
-- sqlcl_snapshot src/database/logger/object_grants/object_grants_as_grantor.logger.table.logger_prefs_by_client_id.sql:null:fd1c70dd9f8413ef9b71923a310de71c1e40178c:create

grant select on logger.logger_prefs_by_client_id to ticketnexus;

