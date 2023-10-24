{{
    config(
        materialized='table'
    )
}}

with opportunites as (
    select * from {{ ref('stg__opportunites') }}
),

accounts as (
    select * from {{ ref('stg__accounts') }}
)


Select 
    o.oppurtunityid as opportunity_id,
    o.companextid as account_id,
    a.company_name,
    a.state as company_state,
    a.city as company_city,
    o.amount as opportunity_amount,
    o.project_name as opportunity_project,
    o.oppurtunity_name,
    o.stage as opportunity_stage,
    o.close_date as opportunity_close_date
from opportunites o 
    left join accounts a 
        on o.companextid = a.companextid
    