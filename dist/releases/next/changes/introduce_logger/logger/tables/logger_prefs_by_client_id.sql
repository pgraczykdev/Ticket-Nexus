-- liquibase formatted sql
-- changeset LOGGER:1772904355645 stripComments:false  logicalFilePath:introduce_logger\logger\tables\logger_prefs_by_client_id.sql
-- sqlcl_snapshot src/database/logger/tables/logger_prefs_by_client_id.sql:null:309f0bdd46137d117c380189bc10397c18a9bfb4:create

create table logger.logger_prefs_by_client_id (
    client_id          varchar2(64 byte) not null enable,
    logger_level       varchar2(20 byte) not null enable,
    include_call_stack varchar2(5 byte) not null enable,
    created_date       date default sysdate not null enable,
    expiry_date        date not null enable
);

alter table logger.logger_prefs_by_client_id
    add constraint logger_prefs_by_client_id_ck1
        check ( logger_level in ( 'OFF', 'PERMANENT', 'ERROR', 'WARNING', 'INFORMATION',
                                  'DEBUG', 'TIMING', 'APEX', 'SYS_CONTEXT' ) ) enable;

alter table logger.logger_prefs_by_client_id
    add constraint logger_prefs_by_client_id_ck2 check ( expiry_date >= created_date ) enable;

alter table logger.logger_prefs_by_client_id
    add constraint logger_prefs_by_client_id_ck3
        check ( include_call_stack in ( 'TRUE', 'FALSE' ) ) enable;

alter table logger.logger_prefs_by_client_id
    add constraint logger_prefs_by_client_id_pk primary key ( client_id )
        using index enable;

