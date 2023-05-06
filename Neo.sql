create database Neo;
use Neo;

create table users_tlb (
user_id int not null,
user_firstName varchar(40) not null,
user_lastName varchar(40) not null,
user_email varchar(60) not null,
user_password varbinary(255) not null
);

INSERT INTO Neo.users_tlb (user_firstname, user_lastname, user_email, user_password)
VALUES (UPPER('pablo'), UPPER('gomez'), 'pabgomez2000@gmail.com', AES_ENCRYPT('password','$2a$12$0BIhaYgJ9rTTPnzcoYW4texXnkQNdimS8l9TrFmIQeSM2zp9OtZQm'));
INSERT INTO Neo.users_tlb (user_firstname, user_lastname, user_email, user_password)
VALUES (UPPER('jose'), UPPER('fino'), 'jose.fino896@gmail.com', AES_ENCRYPT('password','$2a$12$0BIhaYgJ9rTTPnzcoYW4texXnkQNdimS8l9TrFmIQeSM2zp9OtZQm'));

SELECT *, CAST(AES_DECRYPT(user_password,'$2a$12$0BIhaYgJ9rTTPnzcoYW4texXnkQNdimS8l9TrFmIQeSM2zp9OtZQm') AS CHAR(50)) end_data FROM users_tlb WHERE user_id = 1;

select* from users_tlb;