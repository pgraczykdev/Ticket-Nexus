alter table ticketnexus.tickets_tbl
    add constraint tickets_urgency_fk
        foreign key ( urgency_id )
            references ticketnexus.ticket_urgencies_tbl ( id )
        enable;


-- sqlcl_snapshot {"hash":"2919a24c522de1d9c1cf64dbc27d6cc28b3aea74","type":"REF_CONSTRAINT","name":"TICKETS_URGENCY_FK","schemaName":"TICKETNEXUS","sxml":""}