{% macro get_customers_with_more_than_X_opportunites(number_of_opportunities_cutoff) %}
    
    select 
        *
    from {{ ref('opportunities_per_company') }}
        where number_of_opportunities >= {{number_of_opportunities_cutoff}}

{% endmacro %}
