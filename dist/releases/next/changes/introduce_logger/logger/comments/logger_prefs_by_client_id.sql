-- liquibase formatted sql
-- changeset logger:1772904352523 stripComments:false  logicalFilePath:introduce_logger\logger\comments\logger_prefs_by_client_id.sql
-- sqlcl_snapshot src/database/logger/comments/logger_prefs_by_client_id.sql:null:711e660cdf50dd6e6f2d6ac5babf06dd35a84f13:create

comment on table logger.logger_prefs_by_client_id is
    'Client specific logger levels. Only active client_ids/logger_levels will be maintained in this table';

comment on column logger.logger_prefs_by_client_id.client_id is
    'Client identifier';

comment on column logger.logger_prefs_by_client_id.created_date is
    'Date that entry was created on';

comment on column logger.logger_prefs_by_client_id.expiry_date is
    'After the given expiry date the logger_level will be disabled for the specific client_id. Unless sepcifically removed from this table a job will clean up old entries'
    ;

comment on column logger.logger_prefs_by_client_id.include_call_stack is
    'Include call stack in logging';

comment on column logger.logger_prefs_by_client_id.logger_level is
    'Logger level. Must be OFF, PERMANENT, ERROR, WARNING, INFORMATION, DEBUG, TIMING';

