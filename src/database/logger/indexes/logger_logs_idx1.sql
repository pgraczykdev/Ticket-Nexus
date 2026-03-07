create index logger.logger_logs_idx1 on
    logger.logger_logs (
        time_stamp,
        logger_level
    );


-- sqlcl_snapshot {"hash":"0bfe72cfde4adde750091dc5352c68317f6c6c4f","type":"INDEX","name":"LOGGER_LOGS_IDX1","schemaName":"LOGGER","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>LOGGER</SCHEMA>\n   <NAME>LOGGER_LOGS_IDX1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>LOGGER</SCHEMA>\n         <NAME>LOGGER_LOGS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>TIME_STAMP</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>LOGGER_LEVEL</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}