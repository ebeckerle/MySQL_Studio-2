create table author (
	author_id integer primary key auto_increment,
	first_name varchar(100),
    last_name varchar(100),
    birthday date,
    deathday date
);

create table genre (
	genre_id integer primary key auto_increment,
    genre_type varchar(100)
);

create table book (
	book_id int auto_increment primary key,
	title varchar(255),
    author_id integer,
    foreign key (author_id) references author(author_id),
    isbn integer,
    available boolean,
    genre_id integer,
    foreign key (genre_id) references genre(genre_id)
);

create table patron (
	patron_id INT AUTO_INCREMENT PRIMARY KEY,
	first_name varchar(100),
    last_name varchar(100),
    loan_id integer
);

CREATE TABLE reference_books (
   reference_id INT AUTO_INCREMENT PRIMARY KEY,
   edition INT,
   book_id INT,
   FOREIGN KEY (book_id)
      REFERENCES book(book_id)
      ON UPDATE SET NULL
      ON DELETE SET NULL
);

INSERT INTO reference_books(edition, book_id)
VALUE (5,32);

CREATE TABLE loan (
   loan_id INT AUTO_INCREMENT PRIMARY KEY,
   patron_id INT,
   date_out DATE,
   date_in DATE,
   book_id INT,
   FOREIGN KEY (book_id)
      REFERENCES book(book_id)
      ON UPDATE SET NULL
      ON DELETE SET NULL
);

select title, isbn
from book, genre 
where book.genre_id=genre.genre_id and genre_type = "Mystery";

select title, first_name, last_name
from book, author
where book.author_id=author.author_id and author.deathday=null;

select title, first_name, last_name
from book
inner join author on book.author_id=author.author_id
where author.deathday=null;

