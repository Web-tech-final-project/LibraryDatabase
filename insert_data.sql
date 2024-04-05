-- insert data scripts

-- users table
INSERT INTO users (userName, password) 
VALUES	('john_doe', 'password123'),
		('jane_smith', 'qwerty456'),
		('mark_johnson', 'letmein789'),
		('sarah_wilson', 'password123'),
		('michael_brown', 'abc123');

 -- books table
-- books table
INSERT INTO books (isbn, title, author, genreId, datePublished, ownerUserId, dateCheckedOut, dateOfReturn)
VALUES	
('9780141441374', 'Pride and Prejudice', 'Jane Austen', 1, '1813-01-28', 1, '2022-01-01', '2022-02-15'),
('9780743273565', 'To Kill a Mockingbird', 'Harper Lee', 2, '1960-07-11', 2, '2022-01-02', '2022-02-16'),
('9780451524935', '1984', 'George Orwell', 3, '1949-06-08', 3, '2022-01-03', '2022-02-17'),
('9780061120084', 'The Catcher in the Rye', 'J.D. Salinger', 4, '1951-07-16', 4, '2022-01-04', '2022-02-18'),
('9780307594006', 'The Great Gatsby', 'F. Scott Fitzgerald', 5, '1925-04-10', 5, '2022-01-05', '2022-02-19'),
('9780062561029', 'Moby-Dick', 'Herman Melville', 6, '1851-10-18', NULL, NULL, NULL),
('9780544003288', 'The Hobbit', 'J.R.R. Tolkien', 7, '1937-09-21', NULL, NULL, NULL),
('9780143039439', 'The Lord of the Rings', 'J.R.R. Tolkien', 8, '1954-07-29', NULL, NULL, NULL),
('9780140189966', 'One Hundred Years of Solitude', 'Gabriel García Márquez', 9, '1967-05-30', NULL, NULL, NULL),
('9780679723165', 'One Flew Over the Cuckoo\'s Nest', 'Ken Kesey', 10, '1962-02-01', NULL, NULL, NULL),
('9780679437222', 'In Cold Blood', 'Truman Capote', 1, '1965-01-01', NULL, NULL, NULL),
('9780553283686', 'To the Lighthouse', 'Virginia Woolf', 2, '1927-05-05', NULL, NULL, NULL),
('9780062315007', 'The Bell Jar', 'Sylvia Plath', 3, '1963-01-14', NULL, NULL, NULL),
('9780394743120', 'Slaughterhouse-Five', 'Kurt Vonnegut', 4, '1969-03-31', NULL, NULL, NULL),
('9780307477729', 'Catch-22', 'Joseph Heller', 5, '1961-10-11', NULL, NULL, NULL),
('9780061124266', 'Beloved', 'Toni Morrison', 6, '1987-09-02', NULL, NULL, NULL),
('9780679732761', 'The Grapes of Wrath', 'John Steinbeck', 7, '1939-04-14', NULL, NULL, NULL),
('9780679720201', 'The Sound and the Fury', 'William Faulkner', 8, '1929-10-07', NULL, NULL, NULL),
('9780062070117', 'Gone with the Wind', 'Margaret Mitchell', 9, '1936-06-30', NULL, NULL, NULL),
('9780143105985', 'The Picture of Dorian Gray', 'Oscar Wilde', 10, '1890-07-01', NULL, NULL, NULL),
('9780140283334', 'Brave New World', 'Aldous Huxley', 1, '1932-01-01', NULL, NULL, NULL),
('9780060850524', 'The Sun Also Rises', 'Ernest Hemingway', 2, '1926-10-22', NULL, NULL, NULL),
('9780446310789', 'Gulliver\'s Travels', 'Jonathan Swift', 3, '1726-10-28', NULL, NULL, NULL),
('9780385333849', 'For Whom the Bell Tolls', 'Ernest Hemingway', 4, '1940-10-21', NULL, NULL, NULL);

-- updating books table
UPDATE books AS b
JOIN (
    SELECT isbn, CASE WHEN amount > 0 THEN TRUE ELSE FALSE END AS isInStock
    FROM stock
    GROUP BY isbn
) AS s ON b.isbn = s.isbn
SET b.isInStock = s.isInStock;
        
-- genres table
INSERT INTO genres (genre)
VALUES	('Science Fiction'),
		('Fantasy'),
		('Mystery'),
		('Romance'),
		('Thriller'),
		('Horror'),
		('Historical Fiction'),
		('Biography'),
		('Adventure'),
		('Comedy');
        
-- stock table
INSERT INTO stock (isbn, amount)
SELECT isbn, FLOOR(RAND() * 8) AS amount
FROM books;