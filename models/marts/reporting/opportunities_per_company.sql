

select
    company_name,
    count(*) number_of_opportunities

from {{ ref('opportunity_accounts') }}
    group by 
        company_name
    order by 
        number_of_opportunities desc
   
