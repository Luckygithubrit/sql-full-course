PART 1 – DATABASE FUNDAMENTALS
Chapter 1: Introduction to DBMS
1.1 What is Data?
Data is a collection of raw facts and figures that do not necessarily have meaningful interpretation by themselves.

Examples:
- Name: Ravi
- Age: 22
- Salary: 30000
- Marks: 90
1.2 What is Information?
Information is processed, organized and meaningful data.

Example:

Marks: 80, 90, 100.

Average marks: 90.
1.3 What is a Database?
A database is an organized collection of logically related data stored electronically for easy access, management, modification and retrieval.

Examples:
- Banking database
- Hospital database
- Railway database
- College database
- Employee database
1.4 What is DBMS?
DBMS stands for Database Management System.

A DBMS is software used to create, store, organize, retrieve, update and manage data in a database.

Examples:
- MySQL
- Oracle
- PostgreSQL
- Microsoft SQL Server
- Microsoft Access
1.5 Characteristics of DBMS
1. Data storage – Stores large amounts of data.
2. Data retrieval – Retrieves required information.
3. Data manipulation – Supports INSERT, UPDATE and DELETE.
4. Data security – Prevents unauthorized access.
5. Data integrity – Maintains accuracy.
6. Data sharing – Allows multiple users to access data.
7. Data independence – Separates logical and physical data.
8. Backup and recovery – Helps restore lost information.
9. Concurrency control – Manages simultaneous transactions.
10. Reduced redundancy – Minimizes unnecessary duplication.
1.6 Advantages of DBMS
- Reduces data redundancy.
- Improves data consistency.
- Provides security.
- Supports data sharing.
- Maintains data integrity.
- Provides backup and recovery.
- Supports multiple users.
1.7 Disadvantages of DBMS
- Installation and maintenance costs.
- Requires technical knowledge.
- Requires system resources.
- Database failure can affect multiple applications.
- Security breaches can expose large amounts of data.
Chapter 2: Types of DBMS
There are four traditional types of DBMS.
2.1 Hierarchical DBMS
A hierarchical DBMS organizes data in a tree structure.










Characteristics:
- Follows parent-child relationships.
- One parent can have multiple children.
- Each child generally has one parent.
- Data is arranged in levels.
Example: Company organizational structure.
2.2 Network DBMS
A network DBMS organizes data using a graph-like structure.










Characteristics:
- Supports multiple relationships.
- A child can have multiple parents.
- Uses links between records.
- More flexible than hierarchical DBMS.
2.3 Relational DBMS
An RDBMS stores information in tables containing rows and columns.










Characteristics:
- Stores data in tabular form.
- Uses rows and columns.
- Uses primary and foreign keys.
- Supports relationships.
- Uses SQL.
- Supports constraints.
Examples: MySQL, Oracle, PostgreSQL.
2.4 Object-Oriented DBMS
An object-oriented DBMS stores information as objects.

Characteristics:
- Supports classes and objects.
- Supports inheritance.
- Supports encapsulation.
- Handles complex data structures.
Chapter 3: SQL and MySQL
3.1 What is SQL?
SQL stands for Structured Query Language.

SQL is a standard language used to communicate with relational database management systems.

Characteristics:
- Declarative language.
- Used for relational databases.
- Supports data definition.
- Supports data manipulation.
- Supports querying.
- Supports transaction control.
- Supports permissions.
3.2 What is MySQL?
MySQL is an open-source Relational Database Management System that uses SQL to manage relational databases.

MySQL was originally developed by MySQL AB and is now owned by Oracle Corporation.
3.3 Features of MySQL
1. Open-source Community Edition.
2. Client-server architecture.
3. Cross-platform support.
4. Multiple storage engines.
5. Supports transactions through InnoDB.
6. Supports foreign keys.
7. Supports indexing.
8. Provides authentication and access control.
9. Supports multiple programming languages.
10. Supports database backup and recovery.
3.4 SQL vs MySQL
SQL	MySQL
Query language	RDBMS software
Used to write queries	Executes SQL queries
Standard language	Database product
Not database software	Manages databases

Chapter 4: Database Architecture
4.1 Three-Schema Architecture
Database architecture is divided into three levels.










External Level
- Also called view level.
- Represents individual user views.
- Hides unnecessary information.
Conceptual Level
- Also called logical level.
- Represents the complete database structure.
- Defines tables and relationships.
Internal Level
- Also called physical level.
- Describes physical storage.
- Defines indexes, files and storage structures.
4.2 Data Independence
Data independence means changing one database schema level without unnecessarily affecting the higher level.

Types:
1. Physical data independence.
2. Logical data independence.
Chapter 5: Relational Database Concepts
Consider this STUDENT table:
SID	SNAME	AGE	MARKS
101	Ravi	20	85
102	Kumar	21	90
103	Priya	19	95

Important terminology
Relation: A table containing related data.

Tuple: A row or record in a table.

Attribute: A column or property.

Domain: The permitted set of values for an attribute.

Degree: Total number of columns.

Cardinality: Total number of rows.

NULL: Represents missing or unknown information.

Schema: The logical structure or definition of a database object.

Instance: The actual data stored at a particular time.
PART 2 – KEYS AND DATA TYPES
Chapter 6: Types of Keys
A key is an attribute or collection of attributes used to identify records and establish relationships.
6.1 Super Key
Any attribute combination that uniquely identifies each record.
6.2 Candidate Key
A minimal super key without unnecessary attributes.
6.3 Primary Key
A candidate key selected to identify records uniquely.

Characteristics:
- Unique.
- Cannot contain NULL.
- Only one primary key constraint per table.
- Can consist of multiple columns.
6.4 Alternate Key
Candidate keys not selected as the primary key.
6.5 Foreign Key
An attribute or group of attributes that references a candidate key in another or the same table.
6.6 Composite Key
A key formed using two or more columns.
6.7 Natural Key
A key based on meaningful real-world data.
6.8 Surrogate Key
An artificially generated identifier.
Chapter 7: Relationships in DBMS
Relationships define how entities are associated.










One-to-One (1:1)

One record in a table relates to one record in another table.

Example: Person and passport.

One-to-Many (1:M)

One record relates to multiple records.

Example: One department has multiple employees.

Many-to-Many (M:N)

Multiple records in one table relate to multiple records in another table.

Example: Students and courses.

A junction table is generally used to implement a many-to-many relationship.
Chapter 8: MySQL Data Types
A data type defines the type of values that can be stored in a column.
Numeric Types
Type	Description
TINYINT	Very small integer
SMALLINT	Small integer
MEDIUMINT	Medium integer
INT	Integer
BIGINT	Large integer
FLOAT	Approximate decimal
DOUBLE	Double-precision approximate decimal
DECIMAL	Exact decimal

String Types
Type	Description
CHAR	Fixed-length string
VARCHAR	Variable-length string
TINYTEXT	Small text
TEXT	Text
MEDIUMTEXT	Medium text
LONGTEXT	Large text
ENUM	One value from a predefined list
SET	Multiple values from a predefined list

Date and Time Types
- DATE
- TIME
- DATETIME
- TIMESTAMP
- YEAR
Other Types
- JSON
- BLOB
- BINARY
- VARBINARY
- GEOMETRY
PART 3 – CONSTRAINTS AND SQL COMMANDS
Chapter 9: Constraints
Constraints are rules imposed on columns to maintain data integrity.
NOT NULL
Does not allow missing NULL values.
UNIQUE
Prevents duplicate non-NULL values.
PRIMARY KEY
Uniquely identifies every record.
FOREIGN KEY
Maintains relationships between tables.
CHECK
Ensures values satisfy a specified condition.
DEFAULT
Assigns a default value when a value is not supplied.
AUTO_INCREMENT
Automatically generates successive numeric values for a column.
Chapter 10: SQL Command Classification
SQL commands are classified into five categories.
DDL
Data Definition Language

Defines database structure.

CREATE, ALTER, DROP, TRUNCATE, RENAME.


DML
Data Manipulation Language

Modifies table records.

INSERT, UPDATE, DELETE.


DQL
Data Query Language

Retrieves records.

SELECT.


DCL
Data Control Language

Controls permissions.

GRANT, REVOKE.


TCL
Transaction Control Language

Manages transactions.

COMMIT, ROLLBACK, SAVEPOINT.


Difference between DELETE, TRUNCATE and DROP
DELETE	TRUNCATE	DROP
Removes records	Removes all records	Removes table
Supports WHERE	No WHERE	No WHERE
DML	DDL	DDL
Structure remains	Structure remains	Structure removed

Chapter 11: SQL Operators
Arithmetic Operators
+, -, *, /, %, DIV
Comparison Operators
=, !=, <>, >, <, >=, <=
Logical Operators
AND, OR, NOT
Special Operators
BETWEEN, IN, NOT IN, LIKE, IS NULL, IS NOT NULL, EXISTS, ANY, ALL
Bitwise Operators
&, |, ^, ~, <<, >>
Chapter 12: SQL Clauses
FROM: Specifies the source table.

WHERE: Filters rows.

GROUP BY: Groups rows.

HAVING: Filters groups.

ORDER BY: Sorts records.

LIMIT: Restricts the result count.

DISTINCT: Removes duplicate result combinations.
PART 4 – SQL FUNCTIONS
Chapter 13: Single-Row Functions
A single-row function operates on one row at a time and returns one result per row.
Character Functions
Function	Purpose
UPPER()	Uppercase
LOWER()	Lowercase
LENGTH()	Byte length
CHAR_LENGTH()	Character count
CONCAT()	Joins strings
CONCAT_WS()	Joins using separator
SUBSTRING()	Extracts substring
LEFT()	Extracts left characters
RIGHT()	Extracts right characters
TRIM()	Removes both-side spaces
LTRIM()	Removes left spaces
RTRIM()	Removes right spaces
REPLACE()	Replaces characters
REVERSE()	Reverses string
INSTR()	Finds position
LOCATE()	Finds position
LPAD()	Adds left padding
RPAD()	Adds right padding

Numeric Functions
Function	Purpose
ABS()	Absolute value
CEIL()	Rounds upward
FLOOR()	Rounds downward
ROUND()	Rounds decimal
TRUNCATE()	Removes decimal places
MOD()	Remainder
POWER()	Power
SQRT()	Square root
SIGN()	Sign of a number
RAND()	Random number

Date Functions
NOW(), CURDATE(), CURTIME(), YEAR(), MONTH(), DAY(), DAYNAME(), MONTHNAME(), DATEDIFF(), DATE_ADD(), DATE_SUB(), LAST_DAY(), DATE_FORMAT().
Conversion Functions
CAST(), CONVERT().
NULL Functions
IFNULL(), COALESCE(), NULLIF().
Conditional Functions
IF(), CASE.
Chapter 14: Multi-Row Functions
Multi-row functions process multiple records and return one result per group.
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
Important differences:
Single Row	Multi Row
One row at a time	Multiple rows
Multiple results possible	One result per group
UPPER()	SUM()
LENGTH()	COUNT()
ROUND()	AVG()

PART 5 – COMPLETE JOINS THEORY
Chapter 15: Introduction to JOIN
A JOIN combines related records from two or more tables.

Why are joins required?

Because data is stored in separate related tables to reduce redundancy.
Types of JOINs










1. INNER JOIN
2. LEFT OUTER JOIN
3. RIGHT OUTER JOIN
4. FULL OUTER JOIN
5. CROSS JOIN
6. SELF JOIN
7. NATURAL JOIN
8. EQUI JOIN
9. NON-EQUI JOIN
15.1 INNER JOIN
Returns only matching records from both tables.
SELECT e.ename, d.dname
FROM emp e
INNER JOIN dept d
ON e.deptno = d.deptno;


15.2 LEFT OUTER JOIN
Returns all left-table records and matching right-table records.
SELECT e.ename, d.dname
FROM emp e
LEFT JOIN dept d
ON e.deptno = d.deptno;


15.3 RIGHT OUTER JOIN
Returns all right-table records and matching left-table records.
SELECT e.ename, d.dname
FROM emp e
RIGHT JOIN dept d
ON e.deptno = d.deptno;


15.4 FULL OUTER JOIN
Returns all records from both tables, including unmatched records.

MySQL does not directly support FULL OUTER JOIN syntax. We can emulate it using LEFT JOIN and RIGHT JOIN with UNION.
SELECT e.ename, d.dname
FROM emp e
LEFT JOIN dept d
ON e.deptno = d.deptno

UNION

SELECT e.ename, d.dname
FROM emp e
RIGHT JOIN dept d
ON e.deptno = d.deptno;


15.5 CROSS JOIN
Returns the Cartesian product of both tables.

If table A has 5 records and table B has 4 records:
\[
5 \times 4 = 20
\]

15.6 SELF JOIN
A table joins with itself.

Used for employee-manager relationships.
SELECT e.ename AS employee,
       m.ename AS manager
FROM emp e
LEFT JOIN emp m
ON e.mgr = m.empno;


15.7 NATURAL JOIN
Automatically joins tables using identically named columns with compatible data types.
SELECT *
FROM emp
NATURAL JOIN dept;


15.8 EQUI JOIN
Uses equality operator (=) as the join condition.
15.9 NON-EQUI JOIN
Uses comparison conditions other than equality, such as BETWEEN, greater than or less than.
SELECT e.ename, s.grade
FROM emp e
JOIN salgrade s
ON e.sal BETWEEN s.losal AND s.hisal;


Important JOIN differences
INNER	LEFT	RIGHT	CROSS
Matching	All left	All right	Every combination
Unmatched removed	Right side NULL	Left side NULL	No matching condition needed

Multiple Table JOIN
We can join three or more tables in one SQL query.
SELECT e.ename, d.dname, l.city
FROM emp e
JOIN dept d
ON e.deptno = d.deptno
JOIN location l
ON d.loc_id = l.loc_id;


PART 6 – ADVANCED SQL QUERIES
Chapter 16: Subqueries
A subquery is a query inside another query.

Types:
1. Single-row subquery.
2. Multiple-row subquery.
3. Multiple-column subquery.
4. Nested subquery.
5. Correlated subquery.
Single-Row Subquery
Returns one row.
SELECT *
FROM emp
WHERE sal > (SELECT AVG(sal) FROM emp);


Multiple-Row Subquery
Returns multiple rows.
SELECT *
FROM emp
WHERE deptno IN (
    SELECT deptno
    FROM dept
    WHERE loc = 'DALLAS'
);


Correlated Subquery
Depends on the outer query for values.
SELECT e.*
FROM emp e
WHERE sal > (
    SELECT AVG(e2.sal)
    FROM emp e2
    WHERE e2.deptno = e.deptno
);


Chapter 17: Set Operators
Set operators combine the results of SELECT statements.
- UNION – Combines results and removes duplicates.
- UNION ALL – Combines results and retains duplicates.
- INTERSECT – Returns common rows.
- EXCEPT – Returns rows from the first result that are absent from the second.
MySQL supports UNION and UNION ALL broadly; INTERSECT and EXCEPT are supported from MySQL 8.0.31.
PART 7 – ADVANCED DATABASE OBJECTS
Chapter 18: Views
A view is a named virtual table created from a SELECT query.

Uses:
- Security.
- Simplification.
- Data abstraction.
- Customized presentation.
Chapter 19: Indexes
An index is a data structure used to improve data retrieval speed.

Types:
- Primary index.
- Unique index.
- Composite index.
- Full-text index.
- Spatial index.
- Secondary index.
Advantages:
- Faster searching.
- Can improve joins.
- Can improve sorting.
Disadvantages:
- Additional storage.
- Maintenance overhead.
- Can slow down modifications.
Chapter 20: AUTO_INCREMENT
AUTO_INCREMENT automatically generates successive numeric values for a column.
CREATE TABLE student (
    sid INT AUTO_INCREMENT PRIMARY KEY,
    sname VARCHAR(30)
);


It is commonly used for surrogate primary keys.
PART 8 – TRANSACTIONS AND PROGRAMMING
Chapter 21: Transactions
A transaction is a group of operations treated as one logical unit.
ACID Properties
- Atomicity – All or nothing.
- Consistency – Maintains valid database states.
- Isolation – Controls concurrent transactions.
- Durability – Committed data remains saved.
TCL Commands
- COMMIT
- ROLLBACK
- SAVEPOINT
Transaction Isolation Levels
1. READ UNCOMMITTED
2. READ COMMITTED
3. REPEATABLE READ
4. SERIALIZABLE
These levels control how transactions observe changes made by other transactions.
Chapter 22: Stored Procedures
A stored procedure is a collection of SQL statements stored in the database and executed when called.

Parameter types:
- IN
- OUT
- INOUT
Advantages:
- Reusability.
- Reduced repeated code.
- Centralized database operations.
Chapter 23: Stored Functions
A stored function is a database routine that returns a value.

It can be called from SQL expressions, subject to restrictions.
Chapter 24: Triggers
A trigger automatically executes when a specified table event occurs.

Types:
- BEFORE INSERT
- AFTER INSERT
- BEFORE UPDATE
- AFTER UPDATE
- BEFORE DELETE
- AFTER DELETE
Chapter 25: Cursors
A cursor is a database mechanism used to process query results one row at a time inside stored programs.

Cursor operations:
1. DECLARE
2. OPEN
3. FETCH
4. CLOSE
Cursors are useful for row-by-row processing but are generally less efficient than set-based SQL operations.
PART 9 – DATABASE DESIGN AND OPTIMIZATION
Chapter 26: Normalization
Normalization organizes tables to reduce redundancy and prevent anomalies.

Types:
- 1NF – Atomic values.
- 2NF – No partial dependency of non-key attributes on candidate keys.
- 3NF – No transitive dependency of non-key attributes on candidate keys.
- BCNF – Every determinant of a non-trivial functional dependency is a candidate key.
Database Anomalies
- Insertion anomaly.
- Update anomaly.
- Deletion anomaly.
Chapter 27: Denormalization
Denormalization intentionally introduces some redundancy to improve particular read-heavy workloads.
Chapter 28: ER Model
ER stands for Entity Relationship.

It is a conceptual database design model.

Main components:
- Entity – Real-world object.
- Attribute – Property of an entity.
- Relationship – Association between entities.
- Cardinality – Number of related records.
- Primary key – Entity identifier.










Chapter 29: MySQL Architecture and Administration
Client-Server Architecture
MySQL uses a client-server architecture.

Main components:
1. Client.
2. Connection manager.
3. SQL parser.
4. Query optimizer.
5. Query execution engine.
6. Storage engine.
7. Database files.
Storage Engines
InnoDB
- Transaction support.
- Foreign keys.
- Row-level locking.
- Crash recovery.
MyISAM
- No transaction support.
- No foreign keys.
- Table-level locking.
MEMORY
- Stores table data in memory.
- Data is lost after server restart.
Backup and Recovery
- Full backup.
- Incremental backup.
- Differential backup.
- Logical backup.
- Physical backup.
Security
- Authentication.
- Authorization.
- User privileges.
- Password protection.
- Encrypted connections.
- Backup protection.
Chapter 30: Query Optimization
Query optimization means improving SQL query performance while producing the correct result.

Important techniques:
1. Create suitable indexes.
2. Avoid unnecessary SELECT *.
3. Use appropriate JOIN conditions.
4. Filter unnecessary rows early.
5. Avoid unnecessary subqueries.
6. Use EXPLAIN to inspect query execution plans.
7. Choose appropriate data types.
8. Avoid unnecessary functions on indexed columns in filtering conditions.
9. Monitor slow queries.
10. Maintain database statistics.

Final: Complete MySQL Interview Preparation
These are important theory questions to prepare:
1. What is DBMS?
2. What is RDBMS?
3. What is SQL?
4. What is MySQL?
5. Explain database architecture.
6. What are database models?
7. What is a relation?
8. What is a tuple?
9. What is an attribute?
10. What is degree and cardinality?
11. Explain all types of keys.
12. What are constraints?
13. What are SQL command classifications?
14. What is the difference between DDL and DML?
15. Explain SQL operators.
16. Explain all SQL clauses.
17. What are single-row functions?
18. What are aggregate functions?
19. What is the difference between WHERE and HAVING?
20. What is GROUP BY?
21. Explain all types of JOINs.
22. What is EQUI JOIN?
23. What is NON-EQUI JOIN?
24. What is SELF JOIN?
25. What is NATURAL JOIN?
26. What is a subquery?
27. What is a correlated subquery?
28. What is the difference between UNION and UNION ALL?
29. What is a view?
30. What is an index?
31. What is normalization?
32. Explain ACID properties.
33. What is a stored procedure?
34. What is a stored function?
35. What is a trigger?
36. What is a cursor?
37. What is an ER diagram?
38. What is a storage engine?
39. Difference between InnoDB and MyISAM.
40. What is query optimization?
