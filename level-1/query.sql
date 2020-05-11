select * from reviews;

select * from products;

select COUNT (*) from reviews;
--Count of reviews in my_amzn_reviews_db = 9,706,984


select * from reviews
where vine = 'Y';
--Result returns 1,039 rows

select DISTINCT customer_id
from reviews;
-- returns 4,675,880 rows 
-- 48% of reviewers submitted more than 1 review on either a book or office product 

--join 'reviews' table to 'products' table
create view all_reviews AS
	select r.review_id, r.star_rating, r.helpful_votes, r.vine, r.review_headline, r.review_body, r.review_date, r.customer_id, p.product_id, p.product_parent, p.product_title, p.product_category 
	from reviews AS r
		inner join products p
		on (r.review_id = p.review_id)
	order by r.review_date;
	
select * from all_reviews;

select COUNT(*) from all_reviews;
-- 9,706,984 total verified reviews

select distinct product_id
from all_reviews;
-- 2,117,204 unique products (product_ids) among all books and office products in the combined dataset