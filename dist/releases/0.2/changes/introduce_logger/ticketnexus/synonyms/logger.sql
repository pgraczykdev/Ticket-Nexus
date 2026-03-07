-- liquibase formatted sql
-- changeset TICKETNEXUS:1772904356836 stripComments:false  logicalFilePath:introduce_logger\ticketnexus\synonyms\logger.sql
-- sqlcl_snapshot src/database/ticketnexus/synonyms/logger.sql:null:764fb575770e9862bd2c178bde20176a3e3cfca4:create

create or replace editionable synonym ticketnexus.logger for logger.logger;

