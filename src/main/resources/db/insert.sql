DROP TABLE BOOK_AUTHOR
DROP TABLE BOOK_CATEGORY
DROP TABLE FILENAME
DROP TABLE CATEGORY
DROP TABLE AUTHOR
DROP TABLE BOOK

CREATE TABLE BOOK (BOOK_ID INTEGER PRIMARY KEY, ISBN VARCHAR(13) NOT NULL, TITLE VARCHAR(255) NOT NULL, PICTURE BLOB)
CREATE TABLE AUTHOR (AUTHOR_ID INTEGER PRIMARY KEY, NAME VARCHAR(255) NOT NULL)
CREATE TABLE BOOK_AUTHOR (BOOK_ID INTEGER NOT NULL, AUTHOR_ID INTEGER NOT NULL, FOREIGN KEY (BOOK_ID) REFERENCES BOOK(BOOK_ID), FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHOR(AUTHOR_ID))
CREATE TABLE CATEGORY (CATEGORY_ID INTEGER PRIMARY KEY, NAME VARCHAR(255) NOT NULL)
CREATE TABLE BOOK_CATEGORY (BOOK_ID INTEGER NOT NULL, CATEGORY_ID INTEGER NOT NULL, FOREIGN KEY (BOOK_ID) REFERENCES BOOK(BOOK_ID), FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORY(CATEGORY_ID))
CREATE TABLE FILENAME (FILENAME_ID INTEGER PRIMARY KEY, NAME VARCHAR(255) NOT NULL, BOOK_ID INTEGER NOT NULL, FOREIGN KEY (BOOK_ID) REFERENCES BOOK(BOOK_ID))

INSERT INTO BOOK (BOOK_ID, ISBN, TITLE) VALUES(1,'0076092039389','Thinking in Java (4th Edition)')
INSERT INTO BOOK (BOOK_ID, ISBN, TITLE) VALUES(2,'8601400000663','Effective Java (2nd Edition)')
INSERT INTO BOOK (BOOK_ID, ISBN, TITLE) VALUES(3,'0785342336788','Java Puzzlers: Traps, Pitfalls, and Corner Cases')
INSERT INTO FILENAME VALUES(1,'ThinkingInJava4thEd.pdf',1)
--INSERT INTO AUTHOR VALUES(1,'Bruce Eckel')
--INSERT INTO AUTHOR VALUES(2,'Joshua Bloch')
--INSERT INTO BOOK_AUTHOR VALUES(2,2)
--INSERT INTO BOOK_AUTHOR VALUES(3,2)
--INSERT INTO BOOK_AUTHOR VALUES(1,1)
--INSERT INTO CATEGORY VALUES(1, 'Software')
--INSERT INTO CATEGORY VALUES(2, 'Java')
--INSERT INTO CATEGORY VALUES(3, 'Programming Languages')
