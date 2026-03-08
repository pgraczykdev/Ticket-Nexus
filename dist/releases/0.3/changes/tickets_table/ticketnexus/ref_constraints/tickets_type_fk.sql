-- liquibase formatted sql
-- changeset TICKETNEXUS:1772992583988 stripComments:false  logicalFilePath:tickets_table\ticketnexus\ref_constraints\tickets_type_fk.sql
-- sqlcl_snapshot src/database/ticketnexus/ref_constraints/tickets_type_fk.sql:null:bfde665f023f2e2c44f92a7a3d3fcf6c30744e9a:create

alter table ticketnexus.tickets_tbl
    add constraint tickets_type_fk
        foreign key ( ticket_type_id )
            references ticketnexus.ticket_types_tbl ( id )
        enable;

