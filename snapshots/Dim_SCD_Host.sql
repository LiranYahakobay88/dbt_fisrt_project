{% snapshot DIM_SCD_Host %}

{{
    config(
      target_database='AIRBNB_LIRAN',
      target_schema='DWH',
      unique_key='id',

      strategy='check',
      check_cols=['NAME', 'IS_SUPERHOST'],
    )
}}

select * from {{ref('Raw_host')}}

{% endsnapshot %}