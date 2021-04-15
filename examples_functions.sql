-- Grouping Selected Results
use content;
select *
from url_associations, urls
where url_associations.url_id = urls.url_id
group by url_category_id;
-- Another Grouping Query
select u.url
from urls as u, url_associations as a
where u.url_id = a.url_id
group by u.url_id;
-- Count the number of times each URL is listed
-- (*) The asterik means apply to every column
-- The COUNT(*) function only counts non-null values
select
	u.url as "URL",
    count(*) as "Number"
from urls as u, url_associations as a
where u.url_id = a.url_id
group by u.url
order by "Number" desc;
