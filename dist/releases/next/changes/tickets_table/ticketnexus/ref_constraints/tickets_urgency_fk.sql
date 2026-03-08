-- liquibase formatted sql
-- changeset TICKETNEXUS:1772992584088 stripComments:false  logicalFilePath:tickets_table\ticketnexus\ref_constraints\tickets_urgency_fk.sql
-- sqlcl_snapshot src/database/ticketnexus/ref_constraints/tickets_urgency_fk.sql:null:2919a24c522de1d9c1cf64dbc27d6cc28b3aea74:create

alter table ticketnexus.tickets_tbl
    add constraint tickets_urgency_fk
        foreign key ( urgency_id )
            references ticketnexus.ticket_urgencies_tbl ( id )
        enable;

