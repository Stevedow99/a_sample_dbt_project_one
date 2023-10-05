select 
*,
2 as two
from {{ ref('a_simple_model_one') }}