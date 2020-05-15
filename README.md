# big-data-challenge
<h3>Big Data in the Cloud</h3>
<p>
  This project examined customer reviews for verified Amazon purchases of books and office products in the U.S. between 1995-2015. For this task I had to perform ETL on large datasets completely in the cloud and upload the transformed data, as Colab dataframes, to an RDS instance.</p>  
<p>First I extracted AWS review data into Colab notebooks and used PySpark to transform the data. Transformation included: 
<ul>
  <li>Dropping rows containing nulls</li>
  <li>Dropping duplicate rows</li>
  <li>Filtering data to exclude reviews for unverified purchases</li>
  <li>Removing unnecessary columns and creating two separate dataframes for each dataset that matched a sql schema I created</li>
</ul>
</p>
<p>Next, I wrote the dataframes to an RDS instance and loaded the new tables into Postgres.  In Postgres I combined the product review data for two product categories—<i>books</i> and <i>office products</i>—in the U.S. from 1995 - 2015.</p>
<p>The final count of unique product reviews (for verified purchases only) in the combined reviews table is 9,706,984. Dropping reviews with 0 votes further reduces the combined dataset to 3.1 million verified reviews.</p>
![Book Ratings] (https://github.com/boar1ang/big-data-challenge/blob/master/level-2/BookRatings.png)
