-- liquibase formatted sql
-- changeset LOGGER:1772904355293 stripComments:false  logicalFilePath:introduce_logger\logger\tables\logger_prefs.sql
-- sqlcl_snapshot src/database/logger/tables/logger_prefs.sql:null:d7948aecee153371a97e03a7f79f7e21600e8a5c:create

create table logger.logger_prefs (
    pref_name  varchar2(255 byte),
    pref_value varchar2(255 byte) not null enable,
    pref_type  varchar2(30 byte) not null enable
);

alter table logger.logger_prefs
    add constraint logger_prefs_ck1 check ( pref_name = upper(pref_name) ) enable;

alter table logger.logger_prefs
    add constraint logger_prefs_ck2 check ( pref_type = upper(pref_type) ) enable;

alter table logger.logger_prefs
    add constraint logger_prefs_pk primary key ( pref_type,
                                                 pref_name )
        using index enable;

