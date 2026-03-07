-- liquibase formatted sql
-- changeset TICKETNEXUS:1772904357207 stripComments:false  logicalFilePath:introduce_logger\ticketnexus\synonyms\logger_logs_terse.sql
-- sqlcl_snapshot src/database/ticketnexus/synonyms/logger_logs_terse.sql:null:3a1c534be010a6736200077bb760f7f87c45df3b:create

create or replace editionable synonym ticketnexus.logger_logs_terse for logger.logger_logs_terse;

