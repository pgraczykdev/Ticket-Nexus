create or replace package body ticketnexus.tickets_tapi as

    -- Private constants
    gc_scope_prefix constant logger_logs.scope%type := lower($$plsql_unit)
                                                       || '.';
--------------------------------------------------------------------------------------- 
    procedure ins (
        p_row in out nocopy row_t
    ) as
        l_scope constant logger_logs.scope%type := gc_scope_prefix || 'ins';
    begin
        logger.log('START', l_scope);
        insert into ticketnexus.tickets_tbl (
            ticket_number,
            ticket_type_id,
            title,
            description,
            state_id,
            priority_id,
            impact_id,
            urgency_id,
            responsible_id,
            due_date
        ) values ( p_row.ticket_number,
                   p_row.ticket_type_id,
                   p_row.title,
                   p_row.description,
                   p_row.state_id,
                   p_row.priority_id,
                   p_row.impact_id,
                   p_row.urgency_id,
                   p_row.responsible_id,
                   p_row.due_date ) returning id into p_row.id;

        logger.log('END', l_scope);
    exception
        when others then
            logger.log_error('Unhandled Exception', l_scope);
            raise;
    end ins;
--------------------------------------------------------------------------------------- 
    procedure upd (
        p_row in row_t
    ) as
        l_scope constant logger_logs.scope%type := gc_scope_prefix || 'upd';
    begin
        logger.log('START', l_scope);
        update ticketnexus.tickets_tbl
        set
            ticket_number = nvl(p_row.ticket_number, ticket_number),
            ticket_type_id = nvl(p_row.ticket_type_id, ticket_type_id),
            title = nvl(p_row.title, title),
            description = nvl(p_row.description, description),
            state_id = nvl(p_row.state_id, state_id),
            priority_id = nvl(p_row.priority_id, priority_id),
            impact_id = nvl(p_row.impact_id, impact_id),
            urgency_id = nvl(p_row.urgency_id, urgency_id),
            responsible_id = nvl(p_row.responsible_id, responsible_id),
            due_date = nvl(p_row.due_date, due_date),
            updated_on = current_timestamp,
            updated_by = coalesce(
                sys_context('APEX$SESSION', 'APP_USER'),
                user
            )
        where
            id = p_row.id;

        logger.log('END', l_scope);
    exception
        when others then
            logger.log_error('Unhandled Exception', l_scope);
            raise;
    end upd;
--------------------------------------------------------------------------------------- 
    procedure del (
        p_id in id_t
    ) as
        l_scope constant logger_logs.scope%type := gc_scope_prefix || 'del';
    begin
        logger.log('START', l_scope);
        delete from ticketnexus.tickets_tbl
        where
            id = p_id;

        logger.log('END', l_scope);
    exception
        when others then
            logger.log_error('Unhandled Exception', l_scope);
            raise;
    end del;
--------------------------------------------------------------------------------------- 
    function get_row (
        p_id in id_t
    ) return row_t as
        l_scope constant logger_logs.scope%type := gc_scope_prefix || 'get_row';
        l_row   row_t;
    begin
        logger.log('START', l_scope);
        select
            *
        into l_row
        from
            ticketnexus.tickets_tbl
        where
            id = p_id;

        logger.log('END', l_scope);
        return l_row;
    exception
        when no_data_found then
            logger.log('No record found for ID: ' || p_id, l_scope);
            return null;
        when others then
            logger.log_error('Unhandled Exception', l_scope);
            raise;
    end get_row;

end tickets_tapi;
/


-- sqlcl_snapshot {"hash":"088aaa01a5bc9830b36a1d066607b194035b32f1","type":"PACKAGE_BODY","name":"TICKETS_TAPI","schemaName":"TICKETNEXUS","sxml":""}