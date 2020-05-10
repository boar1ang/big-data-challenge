create table products (
    product_id INT PRIMARY KEY NOT NULL,
    product_parent TEXT,
    product_title TEXT,
    product_category TEXT,
    customer_id TEXT NOT NULL

        );

create table reviews (
    review_id INT PRIMARY KEY NOT NULL,
    star_rating NUMERIC,
    helpful_votes INT,
    total_votes INT,
    vine TEXT,
    review_headline TEXT,
    review_body TEXT,
    review_date DATE,
    customer_id TEXT NOT NULL

        );


select * from products;

select * from reviews;