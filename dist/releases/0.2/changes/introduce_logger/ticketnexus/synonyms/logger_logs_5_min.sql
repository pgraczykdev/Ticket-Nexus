-- liquibase formatted sql
-- changeset TICKETNEXUS:1772904356977 stripComments:false  logicalFilePath:introduce_logger\ticketnexus\synonyms\logger_logs_5_min.sql
-- sqlcl_snapshot src/database/ticketnexus/synonyms/logger_logs_5_min.sql:null:d553ebc44a46e69ed94913f129a9d30a116ffed1:create

create or replace editionable synonym ticketnexus.logger_logs_5_min for logger.logger_logs_5_min;

