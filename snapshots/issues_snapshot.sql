{% snapshot issues_snapshot %}

{{
    config(
        target_database = dbt,
        target_schema = dev
        unique_key="ticket_id", 
        strategy="check", 
        check_cols="all", 
        transient=false
    )
}} select * from dit_poc.issues

{% endsnapshot %}
