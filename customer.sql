create table customer
(
    full_name  varchar(255)         null,
    email      varchar(150)         not null,
    password   varchar(255)         null,
    birth_date datetime             null,
    is_deleted tinyint(1) default 0 null,
    constraint customer_email_uindex
        unique (email)
);

alter table customer
    add primary key (email);

INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 10', 'test10@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1970-01-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 11', 'test11@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1970-02-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 12', 'test12@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1970-03-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 13', 'test13@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1970-04-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 14', 'test14@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1970-05-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 15', 'test15@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1970-06-25 20:30:00', 1);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 16', 'test16@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1970-07-25 20:30:00', 1);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 17', 'test17@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1970-08-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 18', 'test18@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1970-09-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 19', 'test19@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1970-10-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 20', 'test20@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1970-11-25 20:30:00', 1);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 21', 'test21@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1970-12-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 22', 'test22@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1971-01-25 20:30:00', 1);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 23', 'test23@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1971-02-25 20:30:00', 1);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 24', 'test24@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1971-03-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 25', 'test25@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1971-04-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 26', 'test26@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1971-05-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 27', 'test27@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1971-06-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 28', 'test28@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1971-07-25 20:30:00', 1);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 29', 'test29@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1971-08-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 2', 'test2@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1971-09-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 30', 'test30@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1971-10-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 3', 'test3@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1971-11-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 4', 'test4@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1971-12-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 5', 'test5@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1972-11-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 6', 'test6@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1973-01-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 7', 'test7@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1973-02-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 8', 'test8@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1973-03-25 20:30:00', 0);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test 9', 'test9@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1973-04-25 20:30:00', 1);
INSERT INTO customer (full_name, email, password, birth_date, is_deleted) VALUES ('Test', 'test@test.com', '$2b$10$XAZx8YveR3puyLFYpyaDw.Jbw8vKhjogvRyG4UOB0zdGdEXhEHWxO', '1973-05-25 20:30:00', 1);