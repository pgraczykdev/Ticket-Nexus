-- liquibase formatted sql
-- changeset LOGGER:1772904352645 stripComments:false  logicalFilePath:introduce_logger\logger\indexes\logger_apex_items_idx1.sql
-- sqlcl_snapshot src/database/logger/indexes/logger_apex_items_idx1.sql:null:7578e0d5e04059d9149a3ddea402bdebb92517bd:create

create index logger.logger_apex_items_idx1 on
    logger.logger_logs_apex_items (
        log_id
    );

