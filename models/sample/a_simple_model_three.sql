{{
    config(
        materialized='table'
    )
}}

select 
*,
10 / (CASE WHEN UNIFORM( 1 , 9, random()) > 5 THEN 1 ELSE 0 END) AS fail_tester

from {{ ref('a_simple_model_two') }}