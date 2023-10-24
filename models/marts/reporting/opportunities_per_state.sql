select
    company_state,
    count(*) number_of_opportunities

from {{ ref('opportunity_accounts') }}
    group by 
        company_state
    order by 
        number_of_opportunities desc
   