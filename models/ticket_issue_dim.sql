{{
  config(
    target_database='dbt',
    target_schema='dit_poc',
    materialized = "table",
    transient = false
  )
}}

select * from {{ ref('issues_snapshot') }} where dbt_valid_to is null