-- liquibase formatted sql
-- changeset TICKETNEXUS:1772904356910 stripComments:false  logicalFilePath:introduce_logger\ticketnexus\synonyms\logger_logs.sql
-- sqlcl_snapshot src/database/ticketnexus/synonyms/logger_logs.sql:null:703a847edb370eae3b0ac1731ec0d89458d544d3:create

create or replace editionable synonym ticketnexus.logger_logs for logger.logger_logs;

