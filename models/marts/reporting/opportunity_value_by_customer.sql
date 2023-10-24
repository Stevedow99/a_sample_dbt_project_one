select
    opportunity_stage,
    count(*) number_of_opportunities

from {{ ref('opportunity_accounts') }}
    group by 
        opportunity_stage
    order by 
        number_of_opportunities desc
   