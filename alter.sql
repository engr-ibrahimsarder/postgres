-- Active: 1745318804130@@127.0.0.1@5432@ph
SELECT * FROM "user2";

-- ALTER TABLE "user2"
--  ADD COLUMN email VARCHAR(255) NOT NULL DEFAULT 'default@gmail.com';

ALTER TABLE "user2"
 DROP COLUMN email;

ALTER TABLE "user2"
 RENAME COLUMN age to user_age;

ALTER TABLE "user2"
 ALTER COLUMN user_name TYPE VARCHAR(50);

 ALTER TABLE "user2"
 ALTER COLUMN user_age set NOT NULL;

 ALTER TABLE "user2"
 ADD constraint unique_user2_user_age UNIQUE(user_age);

SELECT * FROM "user2";