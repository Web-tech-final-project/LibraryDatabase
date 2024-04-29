-- CREATE TABLE scripts

-- users 
CREATE TABLE users (
	id int auto_increment,
    userName varchar(100) unique,
    password varchar(100),
    date timestamp,
    isDeleted bit,
    PRIMARY KEY (id),
    INDEX (userName),
    INDEX (date)    
);

-- genres
CREATE TABLE genres (
	genreId int auto_increment,
    genre varchar(255) unique,
    INDEX (genreId)
);

-- images of books
CREATE TABLE bookImgs (
	imgId int auto_increment,
    imgPath varchar(255) unique,
    INDEX (imgId)
);

-- books
CREATE TABLE books (
	bookId int auto_increment,
    isbn varchar(255),
    title varchar(255),
    author varchar(255),
    genreId int,
    amount int,
    datePublished date,
    imgId int,
    PRIMARY KEY (isbn),
    INDEX (bookId),
    FOREIGN KEY (genreId) REFERENCES genres(genreId),
    FOREIGN KEY (imgId) REFERENCES bookImgs(imgId)
);

-- reviews
CREATE TABLE reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    user_id INT, -- If you want to associate reviews with users
    title VARCHAR(255),
    rating INT,
    review_text TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (book_id) REFERENCES books(bookid)
);

-- rental table 
CREATE TABLE rentals (
	rentalId int auto_increment,
    bookId int,
    userId int,
    dateOfCheckout date default now(),
    returnBy date GENERATED ALWAYS AS (DATE_ADD(dateOfCheckout, INTERVAL 2 WEEK)),
    renewalDate date null,
    newReturnBy date null,
    dateOfReturn date null,
    overdueFee double null,
    payDate date null,
    INDEX (rentalId),
    FOREIGN KEY (bookId) REFERENCES books(bookId),
    FOREIGN KEY (userId) REFERENCES users(id)
);

-- reserves table
CREATE TABLE reserves (
	reserveId int auto_increment,
    bookId int,
    userId int,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    isDeleted bit null,
    INDEX (reserveId),
    FOREIGN KEY (bookId) REFERENCES books(bookId),
    FOREIGN KEY (userId) REFERENCES users(id)
);