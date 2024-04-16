-- insert data scripts

-- users table
INSERT INTO users (userName, password) 
VALUES	('Jon', 'p123'),
		('jane_smith', 'qwerty456'),
		('mark_johnson', 'letmein789'),
		('sarah_wilson', 'password123'),
		('michael_brown', 'abc123');

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


-- insert img paths into table
INSERT INTO bookImgs (imgPath) 
VALUES	('../images/bookImgs/Pride and Prejudice.jpg'),
		('../images/bookImgs/To Kill a Mockingbird.jpg'),
		('../images/bookImgs/1984.jpg'),
		('../images/bookImgs/The Catcher in the Rye.jpg'),
		('../images/bookImgs/The Great Gatsby.jpg'),
		('../images/bookImgs/Moby-Dick.jpg'),
		('../images/bookImgs/The Hobbit.jpg'),
		('../images/bookImgs/The Lord of the Rings.jpg'),
		('../images/bookImgs/One Hundred Years of Solitude.jpg'),
		('../images/bookImgs/One Flew Over the Cuckoos Nest.jpg'),
		('../images/bookImgs/In Cold Blood.jpg'),
		('../images/bookImgs/To the Lighthouse.jpg'),
		('../images/bookImgs/The Bell Jar.jpg'),
		('../images/bookImgs/Slaughterhouse-Five.jpg'),
		('../images/bookImgs/Catch-22.jpg'),
		('../images/bookImgs/Beloved.jpg'),
		('../images/bookImgs/The Grapes of Wrath.jpg'),
		('../images/bookImgs/The Sound and the Fury.jpg'),
		('../images/bookImgs/Gone with the Wind.jpg'),
		('../images/bookImgs/The Picture of Dorian Gray.jpg'),
		('../images/bookImgs/Brave New World.jpg'),
		('../images/bookImgs/The Sun Also Rises.jpg'),
		('../images/bookImgs/Gullivers Travels.jpg'),
		('../images/bookImgs/For Whom the Bell Tolls.jpg');

 
        
-- books table
INSERT INTO books (isbn, title, author, genreId, amount, datePublished, imgId)
VALUES	('9780141441374', 'Pride and Prejudice', 'Jane Austen', 1, 1, '1813-01-28', 1),
		('9780743273565', 'To Kill a Mockingbird', 'Harper Lee', 2, 2, '1960-07-11', 2),
		('9780451524935', '1984', 'George Orwell', 3, 3, '1949-06-08', 3),
		('9780061120084', 'The Catcher in the Rye', 'J.D. Salinger', 4, 4, '1951-07-16', 4),
		('9780307594006', 'The Great Gatsby', 'F. Scott Fitzgerald', 5, 5, '1925-04-10', 5),
		('9780062561029', 'Moby-Dick', 'Herman Melville', 6, 3, '1851-10-18', 6),
		('9780544003288', 'The Hobbit', 'J.R.R. Tolkien', 7, 2, '1937-09-21', 7),
		('9780143039439', 'The Lord of the Rings', 'J.R.R. Tolkien', 8, 4, '1954-07-29', 8),
		('9780140189966', 'One Hundred Years of Solitude', 'Gabriel García Márquez', 9, 5, '1967-05-30', 9),
		('9780679723165', 'One Flew Over the Cuckoo\'s Nest', 'Ken Kesey', 10, 1, '1962-02-01', 10),
		('9780679437222', 'In Cold Blood', 'Truman Capote', 1, 3, '1965-01-01', 11),
		('9780553283686', 'To the Lighthouse', 'Virginia Woolf', 2, 4, '1927-05-05', 12),
		('9780062315007', 'The Bell Jar', 'Sylvia Plath', 3, 2, '1963-01-14', 13),
		('9780394743120', 'Slaughterhouse-Five', 'Kurt Vonnegut', 4, 5, '1969-03-31', 14),
		('9780307477729', 'Catch-22', 'Joseph Heller', 5, 1, '1961-10-11', 15),
		('9780061124266', 'Beloved', 'Toni Morrison', 6, 3, '1987-09-02', 16),
		('9780679732761', 'The Grapes of Wrath', 'John Steinbeck', 7, 2, '1939-04-14', 17),
		('9780679720201', 'The Sound and the Fury', 'William Faulkner', 8, 4, '1929-10-07', 18),
		('9780062070117', 'Gone with the Wind', 'Margaret Mitchell', 9, 1, '1936-06-30', 19),
		('9780143105985', 'The Picture of Dorian Gray', 'Oscar Wilde', 10, 5, '1890-07-01', 20),
		('9780140283334', 'Brave New World', 'Aldous Huxley', 1, 3, '1932-01-01', 21),
		('9780060850524', 'The Sun Also Rises', 'Ernest Hemingway', 2, 2, '1926-10-22', 22),
		('9780446310789', 'Gulliver\'s Travels', 'Jonathan Swift', 3, 4, '1726-10-28', 23),
		('9780385333849', 'For Whom the Bell Tolls', 'Ernest Hemingway', 4, 1, '1940-10-21', 24);
        


-- data for rental books info
INSERT INTO rentals (bookId, userId, dateOfCheckout)
VALUES  (1, 1, '2024-04-12'),
		(2, 1, '2024-04-12'),
		(3, 1, '2024-04-12'),
		(4, 1, '2024-04-12'),
		(5, 1, '2024-04-12');
