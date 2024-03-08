create database assignment1;

use assignment1;

CREATE TABLE Publisher 
(PublisherID NVARCHAR(50) PRIMARY KEY,
Name NVARCHAR(255) NOT NULL,
Address NVARCHAR(255));

Insert Publisher values
('P01','Akashic Books','Bukit Jalil'),
('P02','Graywolf Press','Puchong'),
('P03','Penguin Books','Batu Caves'),
('P04','Pearson','Klang'),
('P05','Pelangi Publishing','Petaling Jaya');

Drop Table Publisher;
Truncate Table Publisher;

CREATE TABLE Book 
(BookID NVARCHAR(50) PRIMARY KEY,
Title NVARCHAR(255) NOT NULL,
Author NVARCHAR(50) NOT NULL,
GenreName NVARCHAR(255) NOT NULL,
CategoryName NVARCHAR(255) NOT NULL,
CategoryID NVARCHAR(50) NOT NULL,
PublisherID NVARCHAR(50) NOT NULL,
Quantity INT NOT NULL,
Price DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID));

Insert Book values
('B01','The Beanstalk','Joseph','Folktale','Fiction','G01','P03','15','15.00'),
('B02','Batman','Bob','Comic','Fiction','G01','P01','12','12.00'),
('B03','Fish','Todd','Comic','Fiction','G01','P02','15','12.00'),
('B04','Gingerbread Man','Jim','Folktale','Fiction','G01','P03','13','15.00'),
('B05','Arena','Frederic','Science fiction','Fiction','G01','P04','17','10.00'),
('B06','Spiderman','Stan','Comic','Fiction','G01','P04','12','15.00'),
('B07','Science Textbook','Issac','Textbook','Non-fiction','G02','P03','13','18.00');

Drop table Book;
Truncate table Book;

CREATE TABLE Member 
(MemberID NVARCHAR(50) PRIMARY KEY,
Name NVARCHAR(255) NOT NULL,
Email NVARCHAR(255) NOT NULL);

Insert Member values
('M01','Amy','Amy@gmail.com'),
('M02','Cassie','Cassie@gmail.com'),
('M03','Darren','Darren@gmail.com'),
('M04','Joe','Joe@gmail.com'),
('M05','Felicia','Felicia@yahoo.com'),
('M06','Rachel','Rachel@yahoo.com'),
('M07','Ruth','Ruth@gmail.com');

Drop table Member;
Truncate table Member;

CREATE TABLE PublisherOrder
(PublisherOrderID NVARCHAR(50) PRIMARY KEY,
PublisherID NVARCHAR(50),
OrderDate DATE NOT NULL,
PaymentStatus NVARCHAR(255) NOT NULL,
DeliveryStatus NVARCHAR(255) NOT NULL,
FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID));

Insert PublisherOrder values
('PO01','P01','1 March 2023','Paid','Delivered'),
('PO02','P02','7 March 2023','Paid','Delivered'),
('PO03','P02','8 March 2023','Paid','Delivered'),
('PO04','P03','10 March 2023','Paid','Delivered'),
('PO05','P03','13 March 2023','Paid','Delivered'),
('PO06','P04','17 March 2023','Pending','Pending'),
('PO07','P05','20 March 2023','Pending','Pending');

drop table PublisherOrder;
Truncate table PublisherOrder;

CREATE TABLE MemberOrder
(MemberOrderID NVARCHAR(50) PRIMARY KEY,
MemberID NVARCHAR(50),
OrderDate DATE NOT NULL,
PaymentStatus NVARCHAR (255) NOT NULL,
DeliveryStatus NVARCHAR(255) NOT NULL,
FOREIGN KEY (MemberID) REFERENCES Member(MemberID));

Insert MemberOrder values
('MO01','M01','1 March 2023','Paid','Delivered'),
('MO02','M02','7 March 2023','Paid','Delivered'),
('MO03','M03','8 March 2023','Paid','Delivered'),
('MO04','M04','10 March 2023','Paid','Delivered'),
('MO05','M05','13 March 2023','Paid','Delivered'),
('MO06','M06','17 March 2023','Paid','Delivered'),
('MO07','M01','20 March 2023','Pending','Pending'),
('MO08','M01','22 March 2023','Pending','Pending');

Drop table MemberOrder;
Truncate table MemberOrder;

CREATE TABLE Feedback 
(FeedbackID NVARCHAR(50) PRIMARY KEY,
MemberID NVARCHAR(50) NOT NULL,
BookID NVARCHAR(50) NOT NULL,
Rating INT NOT NULL,
Comment NVARCHAR(255),
FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
FOREIGN KEY (BookID) REFERENCES Book(BookID));

Insert Feedback values
('F01','M01','B07','8','Highly recommended to all.'),
('F02','M02','B06','7','Well written book'),
('F03','M03','B05','3',''),
('F04','M04','B04','2','Bad.'),
('F05','M05','B03','6','Good.'),
('F06','M06','B02','4','');

Drop table Feedback;
Truncate table Feedback;

CREATE TABLE ShoppingCart 
(CartID NVARCHAR(50) PRIMARY KEY,
MemberID NVARCHAR(50) NOT NULL,
Quantity INT NOT NULL,
FOREIGN KEY (MemberID) REFERENCES Member(MemberID));

Insert ShoppingCart values
('C01','M02','5'),
('C02','M03','1'),
('C03','M04','2'),
('C04','M05','3'),
('C05','M06','4');

Drop table ShoppingCart;
Truncate table ShoppingCart;

CREATE TABLE PublisherOrderandBookDetails
(ID NVARCHAR(50) PRIMARY KEY,
PublisherOrderID NVARCHAR(50),
BookID NVARCHAR(50),
Quantity INT NOT NULL,
TotalPrice DECIMAL(10,2) NOT NULL,
FOREIGN KEY (PublisherOrderID) REFERENCES PublisherOrder(PublisherOrderID),
FOREIGN KEY (BookID) REFERENCES Book(BookID));

Insert PublisherOrderandBookDetails values
('POB01','PO01','B02','7','84'),
('POB02','PO02','B02','6','72'),
('POB03','PO03','B06','5','75'),
('POB04','PO04','B01','4','60'),
('POB05','PO05','B04','3','45'),
('POB06','PO06','B07','2','36'),
('POB07','PO07','B05','1','10');

Drop table PublisherOrderandBookDetails;
Truncate table PublisherOrderandBookDetails;

CREATE TABLE MemberOrderandBookDetails
(ID NVARCHAR(50) PRIMARY KEY,
MemberOrderID NVARCHAR(50),
BookID NVARCHAR(50),
Quantity INT NOT NULL,
TotalPrice DECIMAL(10,2) NOT NULL,
FOREIGN KEY (MemberOrderID) REFERENCES MemberOrder(MemberOrderID),
FOREIGN KEY (BookID) REFERENCES Book(BookID));

Insert MemberOrderandBookDetails values
('MOB01','MO01','B07','8','144'),
('MOB02','MO02','B06','7','105'),
('MOB03','MO03','B05','6','50'),
('MOB04','MO04','B04','5','75'),
('MOB05','MO05','B03','4','48'),
('MOB06','MO06','B02','3','36'),
('MOB07','MO07','B01','2','30'),
('MOB08','MO08','B02','1','12');

Drop table MemberOrderandBookDetails;
Truncate table MemberOrderandBookDetails;

CREATE TABLE CartandBookDetails
(ID NVARCHAR(50) PRIMARY KEY,
CartID NVARCHAR(50),
BookID NVARCHAR(50),
Quantity INT NOT NULL,
TotalPrice DECIMAL(10,2) NOT NULL,
FOREIGN KEY (CartID) REFERENCES ShoppingCart(CartID),
FOREIGN KEY (BookID) REFERENCES Book(BookID));

Insert CartandBookDetails values
('COB01','C01','B02','5','60'),
('COB02','C02','B03','1','12'),
('COB03','C03','B04','2','30'),
('COB04','C04','B05','3','30'),
('COB05','C05','B06','4','60');

Drop table CartandBookDetails;
Truncate table CartandBookDetails;

--PART B--
--1
SELECT Book.BookID, Book.Title, COUNT(Feedback.FeedbackID) AS TotalFeedbacks
FROM Book
INNER JOIN Feedback ON Book.BookID = Feedback.BookID
GROUP BY Book.BookID, Book.Title;

--2
SELECT Member.MemberID, Member.Name, COUNT(Feedback.FeedbackID) AS TotalFeedbacks
FROM Member
INNER JOIN Feedback ON Member.MemberID = Feedback.MemberID
GROUP BY Member.MemberID, Member.Name;

--3
SELECT Publisher.PublisherID, Publisher.Name, COUNT(Book.BookID) AS NumOfBooksPublished
FROM Publisher 
JOIN Book ON Publisher.PublisherID = Book.PublisherID
GROUP BY Publisher.PublisherID, Publisher.Name;

--4
SELECT CategoryID, CategoryName, COUNT(*) AS NumOfBooks
FROM Book
GROUP BY CategoryID, CategoryName;

--5
SELECT *
FROM Book
WHERE Quantity > (SELECT AVG(Quantity) FROM Book);

--6
SELECT GenreName, COUNT(*) as NumberOfBooks
FROM Book
GROUP BY GenreName;

--7
SELECT Member.MemberID, Member.Name
FROM Member
LEFT JOIN MemberOrder ON Member.MemberID = MemberOrder.MemberID
WHERE MemberOrder.MemberOrderID IS NULL;

--8
SELECT Book.BookID, Book.Title, AVG(Feedback.Rating) AS AvgRating
FROM Book
LEFT JOIN Feedback ON Book.BookID = Feedback.BookID
GROUP BY Book.BookID, Book.Title;

--9
SELECT SUM(Quantity) AS TotalBooksInCart
FROM ShoppingCart;

--10
SELECT Member.MemberID, Member.Name, COUNT(*) as OrderCount
FROM Member
JOIN MemberOrder ON Member.MemberID = MemberOrder.MemberID
GROUP BY Member.MemberID, Member.Name
HAVING COUNT(*) > 2;