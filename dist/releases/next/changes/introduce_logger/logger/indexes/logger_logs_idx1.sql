-- liquibase formatted sql
-- changeset LOGGER:1772904352769 stripComments:false  logicalFilePath:introduce_logger\logger\indexes\logger_logs_idx1.sql
-- sqlcl_snapshot src/database/logger/indexes/logger_logs_idx1.sql:null:0bfe72cfde4adde750091dc5352c68317f6c6c4f:create

create index logger.logger_logs_idx1 on
    logger.logger_logs (
        time_stamp,
        logger_level
    );

