-- liquibase formatted sql
-- changeset TICKETNEXUS:1772993845413 stripComments:false  logicalFilePath:tapi_tickets_package\ticketnexus\package_specs\tickets_tapi.sql
-- sqlcl_snapshot src/database/ticketnexus/package_specs/tickets_tapi.sql:null:632751ff47601b8c270179ce6c5b877ccf2718a0:create

create or replace package ticketnexus.tickets_tapi as

    -- Subtypes based on table columns
    subtype id_t is tickets_tbl.id%type;
    subtype ticket_number_t is tickets_tbl.ticket_number%type;
    subtype ticket_type_id_t is tickets_tbl.ticket_type_id%type;
    subtype title_t is tickets_tbl.title%type;
    subtype description_t is tickets_tbl.description%type;
    subtype state_id_t is tickets_tbl.state_id%type;
    subtype priority_id_t is tickets_tbl.priority_id%type;
    subtype impact_id_t is tickets_tbl.impact_id%type;
    subtype urgency_id_t is tickets_tbl.urgency_id%type;
    subtype responsible_id_t is tickets_tbl.responsible_id%type;
    subtype due_date_t is tickets_tbl.due_date%type;
    subtype created_on_t is tickets_tbl.created_on%type;
    subtype created_by_t is tickets_tbl.created_by%type;
    subtype updated_on_t is tickets_tbl.updated_on%type;
    subtype updated_by_t is tickets_tbl.updated_by%type;

    -- Record type for the table
    subtype row_t is tickets_tbl%rowtype;

    -- CRUD operations

    -- Insert a new record
    procedure ins (
        p_row in out nocopy row_t
    );

    -- Update an existing record
    procedure upd (
        p_row in row_t
    );

    -- Delete a record by ID
    procedure del (
        p_id in id_t
    );

    -- Get a record by ID
    function get_row (
        p_id in id_t
    ) return row_t;

end tickets_tapi;
/

