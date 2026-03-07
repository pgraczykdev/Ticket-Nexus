create or replace force editionable view logger.logger_logs_60_min (
    id,
    logger_level,
    text,
    time_stamp,
    scope,
    module,
    action,
    user_name,
    client_identifier,
    call_stack,
    unit_name,
    line_no,
    scn,
    extra,
    sid,
    client_info
) as
    select
        id,
        logger_level,
        text,
        time_stamp,
        scope,
        module,
        action,
        user_name,
        client_identifier,
        call_stack,
        unit_name,
        line_no,
        scn,
        extra,
        sid,
        client_info
    from
        logger_logs
    where
        time_stamp > systimestamp - ( 1 / 24 );


-- sqlcl_snapshot {"hash":"aa84ba7d6ab13f68e77a3147e4f28bba4e118bc5","type":"VIEW","name":"LOGGER_LOGS_60_MIN","schemaName":"LOGGER","sxml":""}