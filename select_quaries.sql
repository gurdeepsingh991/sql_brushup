-- Q1- 

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_id  | int     |
-- | low_fats    | enum    |
-- | recyclable  | enum    |
-- +-------------+---------+
-- product_id is the primary key (column with unique values) for this table.
-- low_fats is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
-- recyclable is an ENUM (category) of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.
-- Write a solution to find the ids of products that are both low fat and recyclable.
-- Solution 
select product_id from Products where low_fats ='Y' and recyclable ='Y'

-- Q2
-- 584. Find Customer Referee
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | referee_id  | int     |
-- +-------------+---------+
-- In SQL, id is the primary key column for this table.
-- Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
 

-- Find the names of the customer that are either:

-- referred by any customer with id != 2.
-- not referred by any customer.
-- Return the result table in any order.

-- solution 
select name from Customer where referee_id is  null or referee_id != 2

-- Q3
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | name        | varchar |
-- | continent   | varchar |
-- | area        | int     |
-- | population  | int     |
-- | gdp         | bigint  |
-- +-------------+---------+
-- name is the primary key (column with unique values) for this table.
-- Each row of this table gives information about the name of a country, the continent to which it belongs, its area, the population, and its GDP value.
 

-- A country is big if:

-- it has an area of at least three million (i.e., 3000000 km2), or
-- it has a population of at least twenty-five million (i.e., 25000000).
-- Write a solution to find the name, population, and area of the big countries.

-- Return the result table in any order.

-- The result format is in the following example.

-- Solution
select name, population, area from World where area >= 3000000 or population >= 25000000


-- -- Q4
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | article_id    | int     |
-- | author_id     | int     |
-- | viewer_id     | int     |
-- | view_date     | date    |
-- +---------------+---------+
-- There is no primary key (column with unique values) for this table, the table may have duplicate rows.
-- Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
-- Note that equal author_id and viewer_id indicate the same person.
 

-- Write a solution to find all the authors that viewed at least one of their own articles.

-- Return the result table sorted by id in ascending order.

-- The result format is in the following example.

-- solution 
select distinct author_id as id from Views where author_id=viewer_id order by author_id 


-- Q5
-- +----------------+---------+
-- | Column Name    | Type    |
-- +----------------+---------+
-- | tweet_id       | int     |
-- | content        | varchar |
-- +----------------+---------+
-- tweet_id is the primary key (column with unique values) for this table.
-- content consists of alphanumeric characters, '!', or ' ' and no other special characters.
-- This table contains all the tweets in a social media app.
 

-- Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

-- Return the result table in any order.

-- Solution
select tweet_id from Tweets where length(content)>15