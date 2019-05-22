BEGIN TRANSACTION;

INSERT into users (name, email, entries, joined) values ('Xavier', 'xavier@gmail.com', 5, '2018-01-01');
INSERT into login (hash, email) values ('$2a$10$nAodbAtGAzd90113pUY7ZO7WDD63hECRHnb4tDczYDwD5fCI85UgO', 'xavier@gmail.com');

COMMIT;