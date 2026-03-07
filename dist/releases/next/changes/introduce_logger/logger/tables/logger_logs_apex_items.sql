-- liquibase formatted sql
-- changeset LOGGER:1772904355117 stripComments:false  logicalFilePath:introduce_logger\logger\tables\logger_logs_apex_items.sql
-- sqlcl_snapshot src/database/logger/tables/logger_logs_apex_items.sql:null:a9a493a22722efcb0bbc8de153d867a95da89835:create

create table logger.logger_logs_apex_items (
    id          number not null enable,
    log_id      number not null enable,
    app_session number not null enable,
    item_name   varchar2(1000 byte) not null enable,
    item_value  clob
);

alter table logger.logger_logs_apex_items
    add constraint logger_logs_apx_itms_pk primary key ( id )
        using index enable;

