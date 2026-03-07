-- liquibase formatted sql
-- changeset TICKETNEXUS:1772904357061 stripComments:false  logicalFilePath:introduce_logger\ticketnexus\synonyms\logger_logs_60_min.sql
-- sqlcl_snapshot src/database/ticketnexus/synonyms/logger_logs_60_min.sql:null:46515507b179acc52bdcc7913ef9a843522f5a50:create

create or replace editionable synonym ticketnexus.logger_logs_60_min for logger.logger_logs_60_min;

