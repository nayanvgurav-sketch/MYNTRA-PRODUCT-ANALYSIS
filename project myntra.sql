use myntra1;
select * from data;

-- 1 IMPACT OF DISCOUNTS ON CUSTOMER ENGAGEMENT
-- analyze how discount influence customer engagement on myntra using the given database 
select 
case 
when discount_percent<35 then 'less_discount'
when discount_percent between 35 and 60 then 'mid_discount'
else 'high_discount'
end as 'discount_range',
sum(rating_count) as 'total_reviews' from data 
group by discount_range
order by total_reviews DESC;

-- 2 IDENTIFY TOP PERFORMING BRANDS
-- identify best performing brand on myntra
SELECT brand_name, count(product_name) as 'product_count',
 round(avg(rating),2) as 'avg_rating',
 sum(rating_count) as 'total_ratings',
 round(avg(discount_percent),2) as 'avg_dis_%',
round(avg(discounted_price),2) as 'avg_selling_price',
round(avg(rating)*sum(rating_count),2) as 'weighted_rating', sum(weighted_rating) from data
group by brand_name
having sum(rating_count)>=100
order by weighted_rating;

-- 3 PRICE SENSITIVITY ANALYSIS
-- does product price affect customer rating on myntra?
select 
case 
when discounted_price<500 then 'low_price'
when discounted_price between 500 and 2000 then 'mid_price'
else 'high_price'
end as 'price_range',
avg(rating) as 'avg_rating', sum(rating_count) as 'total_reviews' from data
group by price_range 
order by 'avg_rating';

--  4 CUSTOMER PREFERENCE FOR DISCOUNTED PRODUCTS 
-- do customers prefer discounted products over over non-discounted ones
select 
case 
when discount_percent=0 then 'zero_dis'
else 'discount'
end as 'dis_category',
count(product_name),
 sum(rating_count) as 'total_reviews' from data
group by dis_category;

-- 5 CATEGORY-WISE PERFORMANCE ANALYSIS
-- which product category perform best on myntra and why?
 SELECT product_tag, 
       SUM(rating_count) AS reviews,
       AVG(rating) AS avg_rating 
FROM data
GROUP BY product_tag
HAVING AVG(rating) > (SELECT AVG(rating) FROM data)
ORDER BY reviews DESC;

-- 

select product_tag, sum(rating_count) as 'reviews',
 avg(rating) as "avg_rating" ,sum(rating_count)*avg(rating) 
 as 'weighted_rating' from data
 group by product_tag
 order by weighted_rating desc;

-- 6 FINDING VALUE-FOR-MONEY PRODUCTS
-- the products with high discount, high rating and low price
select product_name, discount_percent, rating,
discounted_price from data where discount_percent>85 and
 rating>4 and discounted_price<1000
 order by discounted_price;  
 
 -- 7 HANDLING MISSING OR ZERO RATINGS
 -- how would you handle misssing or zero ratings in dataset
 select * from data where 
 rating_count between 101 and 
 (select max(rating_count) from data) and 
 rating_count is not null 
 order by rating_count;



