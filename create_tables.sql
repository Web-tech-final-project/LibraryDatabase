-- create tables scripts

-- users 
create table users (
	id int auto_increment,
	userId int,
    userName varchar(100) unique,
    password varchar(100),
    date timestamp,
    isDeleted bit,
    PRIMARY KEY (id),
    INDEX (userId),
    INDEX (userName),
    INDEX (date)    
);

-- books
create table books (
	bookId int auto_increment,
    isbn varchar(255),
    title varchar(255),
    author varchar(255),
    genreId int,
    datePublished date,
    isInStock bit,
    ownerUserId int,
    dateCheckedOut date null,
    dateOfReturn date null,
    PRIMARY KEY (isbn),
    INDEX (bookId),
    FOREIGN KEY (genreId) REFERENCES genres(genreId),
    FOREIGN KEY (ownerUserId) REFERENCES users(userId)
);

-- genres
create table genres (
	genreId int auto_increment,
    genre varchar(255) unique,
    INDEX (genreId)
);

-- stock
create table stock (
	isbn varchar(255),
    amount int,
    PRIMARY KEY (isbn),
    FOREIGN KEY (isbn) REFERENCES books(isbn)
);
