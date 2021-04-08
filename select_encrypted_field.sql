use mywebsite;
-- Select with encrypted field or type sha()
select * from users where user_password = sha('password');
