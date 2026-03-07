alter table logger.logger_logs_apex_items
    add constraint logger_logs_apx_itms_fk
        foreign key ( log_id )
            references logger.logger_logs ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"ae51e8e0cb2567c29a6fd637d5747a3bbb5dc8ea","type":"REF_CONSTRAINT","name":"LOGGER_LOGS_APX_ITMS_FK","schemaName":"LOGGER","sxml":""}