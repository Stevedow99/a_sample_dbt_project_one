with accounts as (
    select
    *
    from {{ ref('stg__accounts') }}
),
 
opportunites as (
    select
    *
    from {{ ref('stg__opportunites') }}
),


opps_by_acccounts as (
    select 
        a.company_name,
        a.city,
        a.state as company_location,
        o.oppurtunity_name,
        o.stage,
        o.close_date

    
        
    from accounts a 
        left join opportunites o
            on  a.companyextid = o.companyextid
)


select
*
from opps_by_acccounts
 
