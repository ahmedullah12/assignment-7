# Assignment-7: Questions and Answers

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

## 5. Explain the purpose of WHERE clause in a SELECT statement.

If we need to add specific conditions that must be met for the result then we use
WHERE clause in a SELECT statement. With WHERE we can add conditions, we can use comparison operators.
So it means we can use WHERE clause to filter records.

## 6. What are the LIMIT and OFFSET clause used for?

LIMIT and OFFSET clauses are used for data retrieval. By using LIMIT we can limit the number of rows that is returned from a query and by using OFFSET we can skip specific number of rows.
So with LIMIT and OFFSET we can implement pagination functionalities.

## 7. How can you perform data modification using UPDATE statements?

With UPDATE statement we can change specific record or records. <br>
UPDATE statement is like this

```SQL

UPDATE table_name
SET column_name = expression
WHERE specific-condition;

```

Now, suppose we have a table students, and we want to update student_name column where student is is 7

```SQL

UPDATE students
SET student_name = 'Ahmed'
WHERE student_id = 7;

```

## 8. What is the significance of JOIN operations, and how does it work in PostgreSQL?

JOIN clause is used to combine records from two or more tables based on the relation of those tables.
In a relational database like PostgreSQL, JOIN helps use to make query between these relationships.

Suppose we have two tables students, and enrollment. Both the table has student_id, we can now join both this tables and add query.

```SQL

SELECT * FROM students
JOIN enrollment
ON students.student_id = enrollment.student_id;

```

## 9. Explain the GROUP BY clause and its role in aggregation functions.

GROUP BY clause is used for grouping the records that has same values in specified columns.
So if we need some calculations in group of data, then we can group the data with GROUP BY clause and use the aggregate functions with this clause.

## 10. How can you calculate aggregate functions like COUNT, SUM and AVG in PostgreSQL?

We can add calculations with aggregate functions like COUNT, SUM and AVG in PostgreSQL. <br>
Their syntax would be -

```SQL

SELECT COUNT(column_name) FROM table_name;
SELECT SUM(column_name) FROM table_name;
SELECT AVG(column_name) FROM table_name;

```

Suppose we have a table employees, that has a column salary. So we can check number of employees with COUNT(), we can get sum of the salaries with SUM() and average salary with AVG().

- Example:

```SQL
SELECT COUNT(*) FROM employees;
SELECT SUM(salary) FROM employees;
SELECT AVG(salary) FROM employees;
```
