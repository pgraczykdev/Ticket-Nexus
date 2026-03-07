create index logger.logger_apex_items_idx1 on
    logger.logger_logs_apex_items (
        log_id
    );


-- sqlcl_snapshot {"hash":"7578e0d5e04059d9149a3ddea402bdebb92517bd","type":"INDEX","name":"LOGGER_APEX_ITEMS_IDX1","schemaName":"LOGGER","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>LOGGER</SCHEMA>\n   <NAME>LOGGER_APEX_ITEMS_IDX1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>LOGGER</SCHEMA>\n         <NAME>LOGGER_LOGS_APEX_ITEMS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>LOG_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}