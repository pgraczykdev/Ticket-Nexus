-- liquibase formatted sql
-- changeset TICKETNEXUS:1772992583790 stripComments:false  logicalFilePath:tickets_table\ticketnexus\ref_constraints\tickets_responsible_fk.sql
-- sqlcl_snapshot src/database/ticketnexus/ref_constraints/tickets_responsible_fk.sql:null:af95ba0bb15d76dc99e62fde7e2053a21cc96184:create

alter table ticketnexus.tickets_tbl
    add constraint tickets_responsible_fk
        foreign key ( responsible_id )
            references ticketnexus.persons_tbl ( id )
        enable;

