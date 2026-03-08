alter table ticketnexus.tickets_tbl
    add constraint tickets_responsible_fk
        foreign key ( responsible_id )
            references ticketnexus.persons_tbl ( id )
        enable;


-- sqlcl_snapshot {"hash":"af95ba0bb15d76dc99e62fde7e2053a21cc96184","type":"REF_CONSTRAINT","name":"TICKETS_RESPONSIBLE_FK","schemaName":"TICKETNEXUS","sxml":""}