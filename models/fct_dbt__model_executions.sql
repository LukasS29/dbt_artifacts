with base as (

    select *
    from {{ ref('stg_dbt__model_executions') }}

),

model_executions as (

    select
        model_execution_id,
        command_invocation_id,
        node_id,
        was_full_refresh,
        thread_id,
        status,
        compile_started_at,
        query_completed_at,
        total_node_runtime,
        rows_affected,
        materialization,
        schema,
        name
    from base

)

select * from model_executions
