use content;
-- Inner Join
select * from url_associations as a, url_categories as c
where a.url_category_id = c.url_category_id;
-- Left Join
select * from url_categories as c
left join url_associations as a
on a.url_category_id = c.url_category_id;
-- Inner Join with only one column
select c.category from url_associations as a, url_categories as c
where a.url_category_id = c.url_category_id;
-- Inner Join using three tables
select c.category, u.url from urls as u, url_categories as c, url_associations as a
where a.url_category_id = c.url_category_id
	and u.url_id = a.url_id
order by c.category asc;
-- Left Join using three tables
select
	c.category as Category,
    u.url as URL
from url_categories as c
left join url_associations as a using (url_category_id)
left join urls as u using (url_id)
order by c.category;
