-- liquibase formatted sql
-- changeset LOGGER:1772904353946 stripComments:false  logicalFilePath:introduce_logger\logger\object_grants\object_grants_as_grantor.logger.view.logger_logs_terse.sql
-- sqlcl_snapshot src/database/logger/object_grants/object_grants_as_grantor.logger.view.logger_logs_terse.sql:null:406e93f68a643ca728aa043b2fddbf9bf2f8d6e2:create

grant select on logger.logger_logs_terse to ticketnexus;

