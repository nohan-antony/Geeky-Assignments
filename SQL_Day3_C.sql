-- Library Management Schema

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100),
    BirthYear INT
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200),
    AuthorID INT,
    PublicationYear INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Patrons (
    PatronID INT PRIMARY KEY,
    PatronName VARCHAR(100),
    MembershipDate DATE
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    BookID INT,
    PatronID INT,
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (PatronID) REFERENCES Patrons(PatronID)
);

-- Questions

-- 1. List all books along with their authors, including books without assigned authors.
SELECT  B.BOOKID, B.TITLE, A.AUTHORID, A.AUTHORNAME
FROM BOOKS B LEFT JOIN AUTHORS A ON A.AUTHORID=B.AUTHORID;

-- 2. Display all patrons and their loan history, including patrons who have never borrowed a book.
SELECT * FROM PATRONS P LEFT JOIN LOANS L ON P.PATRONID=L.PATRONID;


-- 3. Show all authors and the books they've written, including authors who haven't written any books in our collection.
SELECT A.AUTHORID, A.AUTHORNAME,B.BOOKID,B.TITLE
FROM AUTHORS A LEFT JOIN BOOKS B ON A.AUTHORID=B.AUTHORID;

-- 4. List all possible book-patron combinations, regardless of whether a loan has occurred.
SELECT B.BOOKID,B.TITLE,P.PATRONID,P.PATRONNAME FROM BOOKS B
CROSS JOIN PATRONS P
-- 5. Display all loans with book and patron information, including loans where either the book or patron information is missing.
SELECT L.LOANID,B.BOOKID,B.TITLE,P.PATRONID,P.PATRONNAME
FROM LOANS L
LEFT JOIN BOOKS B ON B.BOOKID=L.BOOKID
LEFT JOIN PATRONS P ON P.PATRONID=L.PATRONID;
-- 6. Show all books that have never been loaned, along with their author information.
SELECT B.BOOKID,B.TITLE,A.AUTHORID,A.AUTHORNAME
FROM BOOKS B
LEFT JOIN LOANS L ON B.BOOKID=L.LOANID
    LEFT JOIN B.AUTHORID=A.AUTHORID
WHERE L.LOANID IS NULL;
-- 7. List all patrons who have borrowed books in the last month, along with the books they've borrowed.
 SELECT L.LOANDATE, P.PATRONNAME,P.PATRONID FROM LOANS L
 LEFT JOIN PATRONS P ON P.PATRONID=L.PATRONID
 WHERE DATEDIFF(MONTH,GETDATE(),L.LOANDATE)=1;
-- 8. Display all authors born after 1970 and their books, including those without any books in our collection.
SELECT A.BIRTHYEAR, A.AUTHORNAME, B.BOOKID,B.TITLE FROM AUTHORS A
LEFT JOIN BOOKS B ON A.AUTHORID=B.AUTHORID
WHERE A.BIRTHYEAR>1970;
-- 9. Show all books published before 2000 and any associated loan information.
SELECT B.BOOKID, B.TITLE, B.PUBLICATIONYEAR,L.LOANID,L.LOANDATE,L.RETURNDATE
FROM BOOKS B LEFT JOIN LOANS L ON B.BOOKID=L.BOOKID
WHERE B.PUBLICATIONYEAR <2000;
-- 10. List all possible author-patron combinations, regardless of whether the patron has borrowed a book by that author.
SELECT P.PATRONID,P.PATRONNAME,A.AUTHORID,A.AUTHORNAME FROM AUTHORS A
CROSS JOIN PATRONS P;
