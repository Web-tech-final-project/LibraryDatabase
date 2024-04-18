-- create tables scripts

-- users 
create table users (
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
create table genres (
	genreId int auto_increment,
    genre varchar(255) unique,
    INDEX (genreId)
);

-- images of books
create table bookImgs (
	imgId int auto_increment,
    imgPath varchar(255) unique,
    INDEX (imgId)
);

-- books
create table books (
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


-- rental table 
create table rentals (
	rentalId int auto_increment,
    bookId int,
    userId int,
    dateOfCheckout date default now(),
    returnBy date GENERATED ALWAYS AS (DATE_ADD(dateOfCheckout, INTERVAL 2 WEEK)),
    newReturnBy date GENERATED ALWAYS AS (DATE_ADD(returnBy, INTERVAL 1 WEEK)),
    isRenewed bit default 0,
    dateOfReturn date null,
    INDEX (rentalId),
    FOREIGN KEY (bookId) REFERENCES books(bookId),
    FOREIGN KEY (userId) REFERENCES users(id)
);
