-- liquibase formatted sql
-- changeset TICKETNEXUS:1772904357138 stripComments:false  logicalFilePath:introduce_logger\ticketnexus\synonyms\logger_logs_apex_items.sql
-- sqlcl_snapshot src/database/ticketnexus/synonyms/logger_logs_apex_items.sql:null:149ef114df2cce0c332376f7117d5e89eb7b3a94:create

create or replace editionable synonym ticketnexus.logger_logs_apex_items for logger.logger_logs_apex_items;

