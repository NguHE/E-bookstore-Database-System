# E-bookstore-Database-System
Assignment for Database for Data Science

<h2> Learning Outcomes: </h2>

- Apply redundancy control in designing a database.
- Demonstrate a database solution using an appropriate tool based on a case study.

### Case Study:
A Bookstore located in Kuala Lumpur Malaysia has vast collection of books in its warehouse. The bookstore ordered books of various genres from different publishers and sell them to the customers. As their business grows, the bookstore would like to implement an online store to facilitate the purchase of books to more customers. You are assigned the project to design and implement a database system for online E-Bookstore Database System. 

### Scenario:
- The bookstore purchases books from publisher which are then sell to its members. The bookstore manager compiles a list of needed books and sends an order to the publishers. The publisher supplies the ordered books to the bookstore. The bookstore manager records the details of a new books that have arrived at the bookstore. An invoice is sent to the accounts department to be processed and payment made.
- Anyone who wish to purchase books online, need to initially register as members. Members will be able to view the book info and read reviews.
- Members who wish to purchase can select their books into the shopping cart. The cart will show the summary of the selection and total cost to be paid. Once the payment is made, the bookstore will send the books to the members within 7 working days.
- The database should manage information about books in the bookstore, members and books they have ordered.
- Member can also provide review for a book, as a rating (1-10 which is 1= terrible, 10= masterpiece) along with optional short text. No changes are allowed; only one review per member per book is allowed.

### Coursework Details:
**1.	Overview**

In this assignment, you are required to design, implement, and document a database system for an electronic bookstore named as E-Bookstore.

**2.	Deliverables:**

**a)	Design a database solution for the given scenario and document the following:**
Minimum requirement of your documentation:
- Introduction of case study, advantages of database and DBMS
- List of business rules (15-20 sentences) relevant to the database
- Entity Relationship Diagram using chen’s notation or crow’s foot notation
- Database Diagram – generate from the DBMS used
- SQL Statements
  
### Data Definition Language (DDL) 
Screen shots of DDL and implemented tables with rows of data (insert 5-10 rows of data into each table). Print screen every query & table (select top 1000 rows).

### Data Manipulation Language (DML)
Screen shots of DML and the executed results from question 2b (below).

<br></br>
**b)	Create the following queries using Data Manipulation Language (DML)**

i.	Find the total number of feedbacks per book. Show book id, book title, and total number of feedbacks per book.

ii.	Find the total number of feedbacks per member. Show member id, member name, and total number of feedbacks per member.

iii.	Find the total number of books published by each publisher. Show publisher id, publisher name, and number of books published.

iv.	Find the total number of books for each category. Show category id, category name, and number of books for each category.

v.	From the book table, list the books where quantity is more than the average quantity of all books. 

vi.	Show how many books are there for each genre

vii.	Show the members who did not make any order

viii.	Find the average rating for each book

ix.	Show the total number of books added to the shopping cart.

x.	Show the members who made more than 2 orders.

