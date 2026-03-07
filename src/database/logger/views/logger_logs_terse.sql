create or replace force editionable view logger.logger_logs_terse (
    id,
    logger_level,
    time_ago,
    text
) as
    select
        id,
        logger_level,
        substr(
            logger.date_text_format(time_stamp),
            1,
            20
        )                    time_ago,
        substr(text, 1, 200) text
    from
        logger_logs
    where
        time_stamp > systimestamp - ( 5 / 1440 )
    order by
        id asc;


-- sqlcl_snapshot {"hash":"8fdde676ea5fb0c8a7cd1ee9f48c93dba70e7397","type":"VIEW","name":"LOGGER_LOGS_TERSE","schemaName":"LOGGER","sxml":""}