{% snapshot orders_snapshot_check %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='customer_id',
          check_cols=['last_ordered_at'],
        )
    }}

    select * from {{ ref('customers') }}

{% endsnapshot %}