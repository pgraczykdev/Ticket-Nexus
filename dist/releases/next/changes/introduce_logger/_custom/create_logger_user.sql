-- liquibase formatted sql
-- changeset  SqlCl:1772892561659 stripComments:false logicalFilePath:introduce_logger\_custom\create_logger_user.sql
-- sqlcl_snapshot dist\releases\next\changes\introduce_logger\_custom\create_logger_user.sql:null:null:custom

SET DEFINE ON
ACCEPT l_pass CHAR PROMPT 'Enter password for LOGGER: ' HIDE

declare
    l_user        varchar2(30) := 'LOGGER';
    l_password    varchar2(30) := '&l_pass';
    l_tablespace  varchar2(30) := 'USERS';
    l_temp_ts     varchar2(30) := 'TEMP';
    
    l_count       number;
begin
    -- Check if user exists
    select count(*) into l_count from all_users where username = l_user;

    if l_count = 0 then
        dbms_output.put_line('Creating user ' || l_user || '...');
        execute immediate 'create user ' || l_user || ' identified by ' || l_password || 
                          ' default tablespace ' || l_tablespace || 
                          ' temporary tablespace ' || l_temp_ts;
        
        execute immediate 'alter user ' || l_user || ' quota unlimited on ' || l_tablespace;
        dbms_output.put_line('User ' || l_user || ' created successfully.');
    else
        dbms_output.put_line('User ' || l_user || ' already exists. Skipping creation.');
    end if;

    -- Ensure privileges are granted regardless of whether the user was just created
    dbms_output.put_line('Granting privileges to ' || l_user || '...');
    
    execute immediate 'grant connect, create view, create job, create table, create sequence, 
                       create trigger, create procedure, create any context to ' || l_user;

    dbms_output.put_line('Setup for ' || l_user || ' completed.');
exception
    when others then
        dbms_output.put_line('Error during setup: ' || sqlerrm);
        raise;
end;
/



