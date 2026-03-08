-- liquibase formatted sql
-- changeset TICKETNEXUS:1772992583576 stripComments:false  logicalFilePath:tickets_table\ticketnexus\ref_constraints\tickets_impact_fk.sql
-- sqlcl_snapshot src/database/ticketnexus/ref_constraints/tickets_impact_fk.sql:null:a010c0a153a2e2a8ca2d8a13ed0a7cc15687689d:create

alter table ticketnexus.tickets_tbl
    add constraint tickets_impact_fk
        foreign key ( impact_id )
            references ticketnexus.ticket_impacts_tbl ( id )
        enable;

