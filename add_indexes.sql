-- Add UNIQUE index on the Category column in url_categories table
-- This index will also enforce uniqueness of values in this column
use content;
alter table url_categories add unique(category);
-- To view indexes from a specific table
use content;
show index from url_categories;
-- Add UNIQUE index on the URL column in urls table
use content;
alter table urls add unique(url);
-- Add multiple indexes to the url_associations table
use content;
alter table url_associations
	add index(url_id),
    add index(url_category_id),
    add index(date_submitted);
-- View the resulting structure of each table
describe url_categories;
describe urls;
describe url_associations;
