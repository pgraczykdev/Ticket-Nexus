-- liquibase formatted sql
-- changeset LOGGER:1772904354516 stripComments:false  logicalFilePath:introduce_logger\logger\ref_constraints\logger_logs_apx_itms_fk.sql
-- sqlcl_snapshot src/database/logger/ref_constraints/logger_logs_apx_itms_fk.sql:null:ae51e8e0cb2567c29a6fd637d5747a3bbb5dc8ea:create

alter table logger.logger_logs_apex_items
    add constraint logger_logs_apx_itms_fk
        foreign key ( log_id )
            references logger.logger_logs ( id )
                on delete cascade
        enable;

