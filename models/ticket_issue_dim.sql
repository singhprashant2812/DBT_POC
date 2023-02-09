{{
  config(
    materialized = "table",
    transient = false
  )
}}

select * from {{ ref('issues_snapshot') }} where dbt_valid_to is null