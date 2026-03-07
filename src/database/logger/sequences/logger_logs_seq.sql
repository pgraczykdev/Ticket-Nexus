create sequence logger.logger_logs_seq minvalue 1 maxvalue 999999999999999999999999999 increment by 1 /* start with n */ cache 20 noorder
nocycle nokeep noscale global;


-- sqlcl_snapshot {"hash":"817e7c4709eb83300e6abd18f47ef13f039cb367","type":"SEQUENCE","name":"LOGGER_LOGS_SEQ","schemaName":"LOGGER","sxml":"\n  <SEQUENCE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>LOGGER</SCHEMA>\n   <NAME>LOGGER_LOGS_SEQ</NAME>\n   \n   <INCREMENT>1</INCREMENT>\n   <MINVALUE>1</MINVALUE>\n   <MAXVALUE>999999999999999999999999999</MAXVALUE>\n   <CACHE>20</CACHE>\n   <SCALE>NOSCALE</SCALE>\n</SEQUENCE>"}