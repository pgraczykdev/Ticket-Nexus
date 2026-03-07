-- liquibase formatted sql
-- changeset LOGGER:1772904353135 stripComments:false  logicalFilePath:introduce_logger\logger\object_grants\object_grants_as_grantor.logger.package_spec.logger.sql
-- sqlcl_snapshot src/database/logger/object_grants/object_grants_as_grantor.logger.package_spec.logger.sql:null:e6b1ea6365b139de5257ad99e3d40308887783d0:create

grant execute on logger.logger to ticketnexus;

