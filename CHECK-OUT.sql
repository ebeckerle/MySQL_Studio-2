-- loan a book out - Carolina Cranmere is loaning out Little Women.

update book
set available=0
where title="Little Women";

insert into loan(patron_id, date_out, book_id)
values ((select patron_id from patron where first_name="Carolina" and last_name="Cranmere"), 6/14/2022, (select book_id from book where title="Little Women"));

update patron
set loan_id=(select loan_id from loan where patron_id=(select patron_id where first_name="Carolina" and last_name="Cranmere"));


-- loan a book out - Remy Fairpool is loaning out Sense and Sensibility.

update book
set available=0
where title="Sense and Sensibility";

insert into loan(patron_id, date_out, book_id)
values ((select patron_id from patron where first_name="Remy" and last_name="Fairpool"), 6/14/2022, (select book_id from book where title="Sense and Sensibility"));

update patron
set loan_id=(select loan_id from loan where patron_id=(select patron_id where first_name="Remy" and last_name="Fairpool"));

select *
from patron
where first_name="Remy" and last_name="Fairpool";

select *
from loan
where patron_id=(select patron_id from patron where first_name="Remy" and last_name="Fairpool");

-- loan a book out - Sybil Costanza is loaning out Beloved.

update book
set available=0
where title="Beloved";

insert into loan(patron_id, date_out, book_id)
values ((select patron_id from patron where first_name="Sybil" and last_name="Costanza"), 6/14/2022, (select book_id from book where title="Beloved"));

update patron
set loan_id=(select loan_id from loan where patron_id=(select patron_id where first_name="Sybil" and last_name="Costanza"));

-- loan a book out - Emmeline Pitherick is loaning out Emma.

update book
set available=0
where title="Emma";

insert into loan(patron_id, date_out, book_id)
values ((select patron_id from patron where first_name="Emmeline" and last_name="Pitherick"), 6/14/2022, (select book_id from book where title="Emma"));

update patron
set loan_id=(select loan_id from loan where patron_id=(select patron_id where first_name="Emmeline" and last_name="Pitherick"));

-- loan a book out - Gillie Fritz is loaning out The Murder Stone.

update book
set available=0
where title="The Murder Stone";

insert into loan(patron_id, date_out, book_id)
values ((select patron_id from patron where first_name="Gillie" and last_name="Fritz"), 6/14/2022, (select book_id from book where title="The Murder Stone"));

update patron
set loan_id=(select loan_id from loan where patron_id=(select patron_id where first_name="Gillie" and last_name="Fritz"));

-- loan a book out - Megan Blyth is loaning out The Golden Compass.

update book
set available=0
where title="The Golden Compass";

insert into loan(patron_id, date_out, book_id)
values ((select patron_id from patron where first_name="Megan" and last_name="Blyth"), 6/14/2022, (select book_id from book where title="The Golden Compass"));

update patron
set loan_id=(select loan_id from loan where patron_id=(select patron_id where first_name="Megan" and last_name="Blyth"));
