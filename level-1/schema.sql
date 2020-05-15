-- my_amzn_reviews_db

create table reviews (
    review_id TEXT PRIMARY KEY NOT NULL,
    star_rating NUMERIC,
    helpful_votes INT,
    total_votes INT,
    vine TEXT,
    review_headline TEXT,
    review_body TEXT,
    review_date DATE,
    customer_id TEXT NOT NULL

        );
        
create table products (
    product_id TEXT PRIMARY KEY NOT NULL,
    product_parent TEXT,
    product_title TEXT,
    product_category TEXT,
    review_id TEXT, 
    FOREIGN KEY (review_id) REFERENCES reviews (review_id)    
        );


<<<<<<< HEAD:level-1/schema.sql
=======

>>>>>>> ccb12ab4fa36f6a99ec79698dcd993bd1c38c6ad:schema.sql
select * from products;
select * from reviews;

<<<<<<< HEAD:level-1/schema.sql
--Over 9 million rows! Must filter and reduce. See 'query.sql'
=======
--Over 9 million rows! Must filter and reduce. See 'query.sql'
>>>>>>> ccb12ab4fa36f6a99ec79698dcd993bd1c38c6ad:schema.sql
