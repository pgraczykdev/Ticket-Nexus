alter table ticketnexus.tickets_tbl
    add constraint tickets_type_fk
        foreign key ( ticket_type_id )
            references ticketnexus.ticket_types_tbl ( id )
        enable;


-- sqlcl_snapshot {"hash":"bfde665f023f2e2c44f92a7a3d3fcf6c30744e9a","type":"REF_CONSTRAINT","name":"TICKETS_TYPE_FK","schemaName":"TICKETNEXUS","sxml":""}