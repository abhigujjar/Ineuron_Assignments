create database LinkdIn; # creating and using the database
use LinkdIn;
# 
create table tech(
id int,
technology varchar(50)
);
 # creating a table abd input the values according to data types

insert into tech values (101,"data science"),
(102,"AI"),
(101,"tableau"),
(101,"SQL"),
(105,"R"),
(106,"powerBI"),
(101,"python"),
(102,"python"),
(105,"SQL"),
(101,"powerBI"),
(101,"R");
 # after table is created inserting the values into repective columns 
select * from tech;


# This gives all ID values containing search query 
select * from tech where technology in ("python","SQL","powerBI");
# this gives the specific ID in which all 3 search query are true (1st inner joing the last two tables ==> answer as inner join to 1st table)
select id from tech where technology ="python" and id in (select id from tech where technology="SQL" and id in (select id from tech where technology="powerBI"));


create database Ecommerce; # creating a Ecomerce database 
use Ecommerce; # using a the database
create table product(
id int primary key ,
product_name varchar(50)
);  # creating a table with all column values and their types varchar is variable character
# primary key is a parameter in which no value in that column cant be NULL
# if you want to insert only in particular column the insert onto  product (col1,col3) 

insert into product values (101,"YT"),(102,"Blog"),(103,"edu"); # inserting the values according to column names

select* from product;
create table product_info(
user_id int, 
id int,
liked_date date,
foreign key (id) references product(id)
); 
#  creating a second table where id coloumn will  be referene with id of product table
# foreign key indicates that a column from another table has to taken as reference

select * from product_info;
INSERT INTO product_info (user_id, id, liked_date) VALUES 
(1, 101, '2023-05-06'),
(2, 103, '2023-04-09'); # adding values to table product info


SELECT * FROM product
LEFT JOIN product_info ON product.id = product_info.id
WHERE product_info.id IS NULL;

# selecting * (all) from table product and left joining it on the produc_infor where all the uncommon from product_info are joined
# condition where product_info.id column is null 


