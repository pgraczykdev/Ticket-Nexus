-- liquibase formatted sql
-- changeset LOGGER:1772904356750 stripComments:false  logicalFilePath:introduce_logger\logger\views\logger_logs_terse.sql
-- sqlcl_snapshot src/database/logger/views/logger_logs_terse.sql:null:8fdde676ea5fb0c8a7cd1ee9f48c93dba70e7397:create

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

