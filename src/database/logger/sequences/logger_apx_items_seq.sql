create sequence logger.logger_apx_items_seq minvalue 1 maxvalue 999999999999999999999999999 increment by 1 /* start with n */ cache 20
noorder nocycle nokeep noscale global;


-- sqlcl_snapshot {"hash":"62202ca45c66dfec672f8a03e5c48b4213947707","type":"SEQUENCE","name":"LOGGER_APX_ITEMS_SEQ","schemaName":"LOGGER","sxml":"\n  <SEQUENCE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>LOGGER</SCHEMA>\n   <NAME>LOGGER_APX_ITEMS_SEQ</NAME>\n   \n   <INCREMENT>1</INCREMENT>\n   <MINVALUE>1</MINVALUE>\n   <MAXVALUE>999999999999999999999999999</MAXVALUE>\n   <CACHE>20</CACHE>\n   <SCALE>NOSCALE</SCALE>\n</SEQUENCE>"}