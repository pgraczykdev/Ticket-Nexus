create or replace force editionable view logger.logger_logs_5_min (
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
        time_stamp > systimestamp - ( 5 / 1440 );


-- sqlcl_snapshot {"hash":"99186618aba5f5b2d7b236c983f13d6ccf1f9fa1","type":"VIEW","name":"LOGGER_LOGS_5_MIN","schemaName":"LOGGER","sxml":""}