
select *
from loan;

select *
from patron;

select *
from book;

select *
from genre;


select first_name, last_name, genre_type
from patron, genre
where patron_id in (select patron_id from loan where date_in is null) and genre_id in (select genre_id from book where book_id in (select book_id from loan where date_in is null));






