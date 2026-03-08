alter table ticketnexus.tickets_tbl
    add constraint tickets_priority_fk
        foreign key ( priority_id )
            references ticketnexus.ticket_priorities_tbl ( id )
        enable;


-- sqlcl_snapshot {"hash":"522dd96fde25b263b50bb641d0a5f26a52f92a76","type":"REF_CONSTRAINT","name":"TICKETS_PRIORITY_FK","schemaName":"TICKETNEXUS","sxml":""}