-- liquibase formatted sql
-- changeset TICKETNEXUS:1772992583891 stripComments:false  logicalFilePath:tickets_table\ticketnexus\ref_constraints\tickets_state_fk.sql
-- sqlcl_snapshot src/database/ticketnexus/ref_constraints/tickets_state_fk.sql:null:37f5582d9c426ebe028cf5dba0d120578f686733:create

alter table ticketnexus.tickets_tbl
    add constraint tickets_state_fk
        foreign key ( state_id )
            references ticketnexus.ticket_states_tbl ( id )
        enable;

