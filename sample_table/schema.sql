-- Drop the tables if it exists
DROP TABLE IF EXISTS batch_test;
DROP TABLE IF EXISTS batch_test_join;

-- Create sample tables
CREATE TABLE batch_test (id serial unique, join_id bigint, number int default null, date timestamp with time zone default null);
CREATE TABLE batch_test_join (id serial unique, number int default null);

-- Add some rows
INSERT INTO batch_test (join_id, number, date)
SELECT generate_series, generate_series, null
FROM generate_series(1, 1000);

INSERT INTO batch_test_join (number)
SELECT generate_series
FROM generate_series(1000, 2000);
