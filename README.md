# SQL Tutorials: Joins and Conditional Clauses

This repository contains two SQL tutorial files that cover important SQL concepts: `joins` and `conditional clauses`. These tutorials are designed to help you understand and implement SQL queries that combine data from multiple tables and filter data based on specific conditions.

## Files

### 1. `joins.sql`
This file includes examples and explanations of different types of SQL joins. Joins are used to combine rows from two or more tables based on a related column between them. The types of joins covered in this file are:

- **INNER JOIN**: Returns records that have matching values in both tables.
- **LEFT JOIN (or LEFT OUTER JOIN)**: Returns all records from the left table, and the matched records from the right table. The result is NULL from the right side, if there is no match.
- **RIGHT JOIN (or RIGHT OUTER JOIN)**: Returns all records from the right table, and the matched records from the left table. The result is NULL from the left side, when there is no match.
- **FULL JOIN (or FULL OUTER JOIN)**: Returns all records when there is a match in either left or right table records.

### 2. `conditional_clauses.sql`
This file includes examples and explanations of how to use conditional clauses in SQL. Conditional clauses are used to filter the data returned by a query based on specific conditions. The key concepts covered include:

- **WHERE Clause**: Filters the result set to include only records that meet certain criteria.
- **AND, OR, NOT Operators**: Combine multiple conditions in a WHERE clause to refine the results.
- **IN Operator**: Checks if a value matches any value in a list of values.
- **BETWEEN Operator**: Filters the result set within a certain range.
- **LIKE Operator**: Filters the result set based on pattern matching.
- **IS NULL and IS NOT NULL**: Filters the result set for NULL or NOT NULL values.

## Usage

To use these files, you can run them in your SQL environment. Here are some steps to get you started:

1. Clone this repository to your local machine.
    ```bash
    git clone https://github.com/bahar2790/sql_project_git
    ```
2. Open your SQL client or command line tool.
3. Load the SQL files into your database environment and execute the queries.

## Examples

Here are some example queries from each file:

### From `joins.sql`
```sql
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.id;
