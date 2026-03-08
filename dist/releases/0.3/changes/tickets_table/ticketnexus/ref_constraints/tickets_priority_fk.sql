-- liquibase formatted sql
-- changeset TICKETNEXUS:1772992583677 stripComments:false  logicalFilePath:tickets_table\ticketnexus\ref_constraints\tickets_priority_fk.sql
-- sqlcl_snapshot src/database/ticketnexus/ref_constraints/tickets_priority_fk.sql:null:522dd96fde25b263b50bb641d0a5f26a52f92a76:create

alter table ticketnexus.tickets_tbl
    add constraint tickets_priority_fk
        foreign key ( priority_id )
            references ticketnexus.ticket_priorities_tbl ( id )
        enable;

