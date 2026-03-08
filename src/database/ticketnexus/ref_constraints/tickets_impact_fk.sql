alter table ticketnexus.tickets_tbl
    add constraint tickets_impact_fk
        foreign key ( impact_id )
            references ticketnexus.ticket_impacts_tbl ( id )
        enable;


-- sqlcl_snapshot {"hash":"a010c0a153a2e2a8ca2d8a13ed0a7cc15687689d","type":"REF_CONSTRAINT","name":"TICKETS_IMPACT_FK","schemaName":"TICKETNEXUS","sxml":""}