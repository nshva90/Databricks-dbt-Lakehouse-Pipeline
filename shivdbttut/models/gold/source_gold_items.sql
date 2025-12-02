with dedup_items as 
(
select 
    *,
    row_number() over(partition by id order by updatedate desc) as row_number
from 
    {{source('source', 'items')}}
)

select id, name, category, updatedate
from dedup_items
where row_number = 1;