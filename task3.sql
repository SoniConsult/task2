select * from accounts;
select * from items;
select * from account_items;


select 
    a.username,
    i.type,
    ai.quality as advised_quality,
    STRING_AGG(i.name, ', ' ORDER BY i.name ASC) as advised_name
from
    accounts a
join 
    account_items ai on a.id = ai.account_id
join
    items i on ai.item_id = i.id
where 
    ai.quality = (
        select max(ai2.quality)
        from account_items ai2
        where ai2.account_id = ai.account_id and ai2.item_id = ai.item_id
    )
group by 
    a.username, i.type, ai.quality
order by  
    a.username asc, i.type asc;
