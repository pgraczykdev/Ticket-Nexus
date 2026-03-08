alter table ticketnexus.tickets_tbl
    add constraint tickets_state_fk
        foreign key ( state_id )
            references ticketnexus.ticket_states_tbl ( id )
        enable;


-- sqlcl_snapshot {"hash":"37f5582d9c426ebe028cf5dba0d120578f686733","type":"REF_CONSTRAINT","name":"TICKETS_STATE_FK","schemaName":"TICKETNEXUS","sxml":""}