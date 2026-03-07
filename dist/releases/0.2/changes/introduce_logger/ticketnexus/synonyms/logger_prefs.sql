-- liquibase formatted sql
-- changeset TICKETNEXUS:1772904357282 stripComments:false  logicalFilePath:introduce_logger\ticketnexus\synonyms\logger_prefs.sql
-- sqlcl_snapshot src/database/ticketnexus/synonyms/logger_prefs.sql:null:bdff2eed7c39d01f2a96f776161a590f07dd616f:create

create or replace editionable synonym ticketnexus.logger_prefs for logger.logger_prefs;

