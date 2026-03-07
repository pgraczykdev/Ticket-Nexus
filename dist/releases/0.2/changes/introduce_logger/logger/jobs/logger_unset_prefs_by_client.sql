-- liquibase formatted sql
-- changeset LOGGER:1772904353011 stripComments:false  logicalFilePath:introduce_logger\logger\jobs\logger_unset_prefs_by_client.sql
-- sqlcl_snapshot src/database/logger/jobs/logger_unset_prefs_by_client.sql:null:aa3278d0a9dff4b9cb435855a752bb5f87732a60:create

begin
    dbms_scheduler.create_job(
        job_name            => '"LOGGER"."LOGGER_UNSET_PREFS_BY_CLIENT"',
        job_type            => 'PLSQL_BLOCK',
        job_action          => 'BEGIN LOGGER.UNSET_CLIENT_LEVEL; END; ',
        start_date          => timestamp '2026-03-07 18:20:54.858932',
        repeat_interval     => 'FREQ=HOURLY; BYHOUR=1',
        end_date            => null,
        job_class           => 'DEFAULT_JOB_CLASS',
        comments            => 'Clears logger prefs by client_id',
        auto_drop           => true,
        number_of_arguments => 0
    );

    dbms_scheduler.set_attribute(
        name      => '"LOGGER"."LOGGER_UNSET_PREFS_BY_CLIENT"',
        attribute => 'logging_level',
        value     => dbms_scheduler.logging_off
    );

    dbms_scheduler.set_attribute(
        name      => '"LOGGER"."LOGGER_UNSET_PREFS_BY_CLIENT"',
        attribute => 'job_priority',
        value     => 3
    );

    dbms_scheduler.enable('"LOGGER"."LOGGER_UNSET_PREFS_BY_CLIENT"');
end;
/

