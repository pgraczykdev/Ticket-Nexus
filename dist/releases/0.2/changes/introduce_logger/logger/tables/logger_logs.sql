-- liquibase formatted sql
-- changeset LOGGER:1772904354860 stripComments:false  logicalFilePath:introduce_logger\logger\tables\logger_logs.sql
-- sqlcl_snapshot src/database/logger/tables/logger_logs.sql:null:8d89cadfa877c1fa2eb0ba8c88cfc538524f16d3:create

create table logger.logger_logs (
    id                number,
    logger_level      number not null enable,
    text              varchar2(4000 byte),
    time_stamp        timestamp(6) not null enable,
    scope             varchar2(1000 byte),
    module            varchar2(100 byte),
    action            varchar2(100 byte),
    user_name         varchar2(255 byte),
    client_identifier varchar2(255 byte),
    call_stack        varchar2(4000 byte),
    unit_name         varchar2(255 byte),
    line_no           varchar2(100 byte),
    scn               number,
    extra             clob,
    sid               number,
    client_info       varchar2(64 byte)
);

alter table logger.logger_logs
    add constraint logger_logs_lvl_ck
        check ( logger_level in ( 1, 2, 4, 8, 16,
                                  32, 64, 128 ) ) enable;

alter table logger.logger_logs
    add constraint logger_logs_pk primary key ( id )
        using index enable;

