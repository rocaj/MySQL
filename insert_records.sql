-- Insert a single record
use mywebsite;
-- Note that the sha() function will create a string that is exactly 40 characters long.
-- This is why the user_password field was created with a length of 40 characters.
-- The sha() function is a one-way encryption technique, meaning that it cannot reversed.
-- In other words, it can be used for storing sensitive data that need not be viewed in an unencrypted form again.
insert into users (first_name, last_name, email, user_password, registration_date)
values ('Larry', 'Ullman', 'phpmysql2@dmcinsights.com', sha('password'), now());
-- Insert multiple records
insert into users (first_name, last_name, email, user_password, registration_date)
values
('John', 'Lennon', 'john@beatles.com', sha('Happin3ss'), now()),
('Paul', 'McCartney', 'paul@beatles.com', sha('letITbe'), now()),
('George', 'Harrison', 'george@beatles.com', sha('something'), now()),
('Ringo', 'Starr', 'ringo@beatles.com', sha('thisboy'), now());
-- Insert a value with a single quotation mark
insert into users (first_name, last_name, email, user_password, registration_date)
values ('Peter', 'O\'Toole', 'peter@email.com', sha('abcdef'), now());
