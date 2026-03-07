begin
    dbms_scheduler.create_job(
        job_name            => '"LOGGER"."LOGGER_PURGE_JOB"',
        job_type            => 'PLSQL_BLOCK',
        job_action          => 'BEGIN LOGGER.PURGE; END; ',
        start_date          => timestamp '2026-03-07 18:20:54.743693',
        repeat_interval     => 'FREQ=DAILY; BYHOUR=1',
        end_date            => null,
        job_class           => 'DEFAULT_JOB_CLASS',
        comments            => 'Purges LOGGER_LOGS using default values defined in logger_prefs.',
        auto_drop           => true,
        number_of_arguments => 0
    );

    dbms_scheduler.set_attribute(
        name      => '"LOGGER"."LOGGER_PURGE_JOB"',
        attribute => 'logging_level',
        value     => dbms_scheduler.logging_off
    );

    dbms_scheduler.set_attribute(
        name      => '"LOGGER"."LOGGER_PURGE_JOB"',
        attribute => 'job_priority',
        value     => 3
    );

    dbms_scheduler.enable('"LOGGER"."LOGGER_PURGE_JOB"');
end;
/


-- sqlcl_snapshot {"hash":"6aad54db6a3437b4e4fb02134aaed5448227cec1","type":"JOB","name":"LOGGER_PURGE_JOB","schemaName":"LOGGER","sxml":""}