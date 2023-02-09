{{
  config(
    materialized = "table"
  )
}}

select * from {{ ref('issues_snapshot') }} where dbt_valid_to is null