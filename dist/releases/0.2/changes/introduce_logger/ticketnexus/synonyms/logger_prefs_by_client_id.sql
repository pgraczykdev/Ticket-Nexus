-- liquibase formatted sql
-- changeset TICKETNEXUS:1772904357354 stripComments:false  logicalFilePath:introduce_logger\ticketnexus\synonyms\logger_prefs_by_client_id.sql
-- sqlcl_snapshot src/database/ticketnexus/synonyms/logger_prefs_by_client_id.sql:null:453a3aebbe09889ee4e2a0da74dba5e9d2da2fe6:create

create or replace editionable synonym ticketnexus.logger_prefs_by_client_id for logger.logger_prefs_by_client_id;

