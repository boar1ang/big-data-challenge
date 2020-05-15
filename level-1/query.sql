select * from reviews;
select * from products;

select COUNT (*) from reviews;
--Count of total verified reviews in my_amzn_reviews_db = 9,706,984

DELETE FROM reviews
WHERE total_votes = 0;
select COUNT (*) from reviews;
--AFter removing verified reviews with 0 votes, the total review count drops to 3,147,285

select * from reviews
where vine = 'Y';
--Result returns 1,039 rows

select DISTINCT customer_id
from reviews;
-- returns 4,675,880 rows 

--Join 'reviews' table to 'products' table
create TABLE all_reviews AS
	select r.review_id, r.star_rating, r.helpful_votes, r.vine, r.review_headline, r.review_body, r.review_date, r.customer_id, p.product_id, p.product_parent, p.product_title, p.product_category 
	from reviews AS r
		inner join products p
		on (r.review_id = p.review_id)
	order by r.review_date;
	
select * from all_reviews;
--3,147,285 TOTAL (cleaned) REVIEWS

select distinct product_id
from all_reviews;
-- 964,714 unique products (product_ids) among all books and office products in the combined reviews dataset

select DISTINCT customer_id
from all_reviews;
--returns 2,065,429 rows (unique customers)
--52% of reviewers submitted more than 1 review in this dataset

select * from all_reviews
where vine = 'Y';
--Result returns 692 REVIEWS w/ Vine

CREATE TABLE office_prod_rating_dist AS
    select star_rating, COUNT (star_rating) AS office_prod_ratings 
    from all_reviews
    where product_category = 'Office Products'
    group by star_rating;

select * from office_prod_rating_dist;


CREATE TABLE books_rating_dist AS
    select star_rating, COUNT (star_rating) AS book_ratings 
    from all_reviews
    where product_category = 'Books'
    group by star_rating;

select * from books_rating_dist;

create TABLE vine_review_dist AS 
    select star_rating, COUNT (star_rating) AS vine_ratings
    from all_reviews
    where vine = 'Y'
	group by star_rating;

select * from vine_review_dist;