-- check a book back in - Carolina Cranmere is returning Little Women

update book
set available=1
where title="Little Women";

update loan
set date_in=6/15/2022
where patron_id=(select patron_id from patron where first_name="Carolina" and last_name="Cranmere") and book_id=(select book_id from book where title="Little Women");

update patron
set loan_id=null
where first_name="Carolina" and last_name="Cranmere";

-- check a book back in - Remy Fairpool is returning Sense and Sensibility

update book
set available=1
where title="Sense and Sensibility";

update loan
set date_in=6/15/2022
where patron_id=(select patron_id from patron where first_name="Remy" and last_name="Fairpool") and book_id=(select book_id from book where title="Sense and Sensibility");

update patron
set loan_id=null
where first_name="Remy" and last_name="Fairpool";


-- check a book back in - Sybil Costanza is returning Beloved

update book
set available=1
where title="Beloved";

update loan
set date_in=6/15/2022
where patron_id=(select patron_id from patron where first_name="Sybil" and last_name="Costanza") and book_id=(select book_id from book where title="Beloved");

update patron
set loan_id=null
where first_name="Sybil" and last_name="Costanza";

-- check a book back in - Emmeline Pitherick is returning Emma

update book
set available=1
where title="Emma";

update loan
set date_in=6/15/2022
where patron_id=(select patron_id from patron where first_name="Emmeline" and last_name="Pitherick") and book_id=(select book_id from book where title="Emma");

update patron
set loan_id=null
where first_name="Emmeline" and last_name="Pitherick";

-- check a book back in - Gillie Fritz is returning The Murder Stone

update book
set available=1
where title="The Murder Stone";

update loan
set date_in=6/15/2022
where patron_id=(select patron_id from patron where first_name="Gillie" and last_name="Fritz") and book_id=(select book_id from book where title="The Murder Stone");

update patron
set loan_id=null
where first_name="Gillie" and last_name="Fritz";

-- check a book back in - Megan Blyth is returning The Golden Compass

update book
set available=1
where title="The Golden Compass";

update loan
set date_in=6/15/2022
where patron_id=(select patron_id from patron where first_name="Megan" and last_name="Blyth") and book_id=(select book_id from book where title="The Golden Compass");

update patron
set loan_id=null
where first_name="Megan" and last_name="Blyth";

