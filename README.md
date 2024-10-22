# Assignment-7:  Questions and Answers


## 1. What is PostgreSQL?
PostgreSQL is a open source relational database system that user and extends SQL to provide advanced features for secure data management. It provides robust data storage and scalability for complex workloads.

## 2. What is the purpose of a database schema in PostgreSQL?
A Schema is an objects container that organizes the objects like tables, views, functions and indexes. Its purpose would be: 
- To organize the database very well
- Namespace system to avoid naming conflicts
- Control who can access what

## 3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
**Primary Key:** Primary key is an attribute or set of attributes that helps us to uniquely identify records in a table. Every table should have a Primary Key.

**Foreign Key:** If a Primary Key of a table is used in another table then it is called Foreign Key. It helps use to make a relation between tables.

## 4. What is the difference between the VARCHAR and CHAR data types?
The main difference between VARCHAR and CHAR would be that CHAR has fixed length and VARCHAR is flexible. If you specify CHAR() then it will use the full space and if you specify VARCHAR() then it would only use that much space that it needs. So if we use CHAR it can add extra spaces but VARCHAR doesn't do that.


