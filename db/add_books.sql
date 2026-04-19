INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'The Martian',
           'Andy Weir',
           'The Martian follows astronaut Mark Watney as he uses science, ingenuity, and humor to survive alone on Mars after being mistakenly left behind by his crew.',
           'book_1.jpg',
           'TBR',
           1
       );

INSERT INTO book_tags (description)
VALUES ('Science Fiction');

INSERT INTO book_tags (description)
VALUES ('Adventure');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (1, 1);

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (1, 2);

INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'Sunrise on the Reaping',
           'Suzanne Collins',
           'A Hunger Games prequel set during the 50th Games, exploring the world of Panem and the forces that shaped its rebellion.',
           'book_5.jpg',
           'TBR',
           0
       );

INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Dystopian');
INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Adventure');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Dystopian'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Adventure'));

INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'Pride and Prejudice',
           'Jane Austen',
           'A classic romantic novel following Elizabeth Bennet as she navigates manners, marriage, morality, and misunderstandings in Regency England.',
           'book_6.jpg',
           'TBR',
           0
       );

INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Romance');
INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Classic');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Romance'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Classic'));



INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'Little Women',
           'Louisa May Alcott',
           'The beloved story of the four March sisters as they grow up, face hardships, and discover their own paths in life.',
           'book_7.jpg',
           'TBR',
           0
       );

INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Classic');
INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Coming of Age');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Classic'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Coming of Age'));


INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'Lessons in Chemistry',
           'Bonnie Garmus',
           'A brilliant chemist in the 1960s unexpectedly becomes the star of a cooking show, challenging societal expectations for women.',
           'book_8.jpg',
           'TBR',
           0
       );

INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Historical Fiction');
INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Humor');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Historical Fiction'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Humor'));


INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'The Book of Lost Names',
           'Kristin Harmel',
           'During World War II, a young Jewish woman forges documents for children escaping the Nazis while secretly encoding their real identities.',
           'book_9.jpg',
           'TBR',
           0
       );

INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Historical Fiction');
INSERT OR IGNORE INTO book_tags VALUES (NULL, 'War');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Historical Fiction'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='War'));


INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'Mr. Lemoncello''s Library',
           'Chris Grabenstein',
           'A group of kids compete in a puzzle-filled overnight adventure inside the world''s most imaginative library.',
           'book_10.jpg',
           'TBR',
           0
       );

INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Adventure');
INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Mystery');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Adventure'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Mystery'));



INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'Project Hail Mary',
           'Andy Weir',
           'A lone astronaut wakes up in space with no memory and must save Earth from an extinction-level threat.',
           'book_11.jpg',
           'TBR',
           0
       );

INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Science Fiction');
INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Space');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Science Fiction'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Space'));


INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'The Night Circus',
           'Erin Morgenstern',
           'Two young magicians compete in a mysterious magical duel inside a traveling circus that appears only at night.',
           'book_12.jpg',
           'TBR',
           0
       );

INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Fantasy');
INSERT OR IGNORE INTO book_tags VALUES (NULL, 'Romance');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Fantasy'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Romance'));




INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'Everything I Know About Love',
           'Dolly Alderton',
           'A candid memoir about growing up, navigating relationships and heartbreak, and discovering the enduring power of friendship.',
           'book_2.jpg',
           'Read',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Autobiography');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Memoir');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Autobiography'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Memoir'));



INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'Atomic Habits',
           'James Clear',
           'A practical guide showing how small daily habits can compound into remarkable personal and professional growth.',
           'book_13.jpg',
           'Read',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Self Improvement');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Productivity');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Self Improvement'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Productivity'));



INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'Dune',
           'Frank Herbert',
           'An epic science fiction saga about politics, religion, ecology, and power on the desert planet Arrakis.',
           'book_14.jpg',
           'Read',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Science Fiction');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Epic');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Science Fiction'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Epic'));



INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'The Hunger Games',
           'Suzanne Collins',
           'Katniss Everdeen volunteers for a deadly televised competition where only one tribute can survive.',
           'book_15.jpg',
           'Read',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Dystopian');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Adventure');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Dystopian'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Adventure'));


INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'The Alchemist',
           'Paulo Coelho',
           'A shepherd boy travels the world seeking treasure and ultimately learns to follow his dreams.',
           'book_16.jpg',
           'Read',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Philosophy');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Adventure');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Philosophy'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Adventure'));



INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'Where the Crawdads Sing',
           'Delia Owens',
           'A haunting coming-of-age mystery set in the marshes of North Carolina.',
           'book_17.jpg',
           'Read',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Mystery');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Literary Fiction');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Mystery'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Literary Fiction'));



INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'The Seven Husbands of Evelyn Hugo',
           'Taylor Jenkins Reid',
           'A reclusive Hollywood icon recounts her glamorous and scandalous life story.',
           'book_18.jpg',
           'Read',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Historical Fiction');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Drama');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Historical Fiction'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Drama'));



INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'The Great Gatsby',
           'F. Scott Fitzgerald',
           'A tragic story of love, ambition, and the illusion of the American dream in the roaring twenties.',
           'book_19.jpg',
           'Read',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Classic');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Literary Fiction');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Classic'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Literary Fiction'));


INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'The Hobbit',
           'J.R.R. Tolkien',
           'Bilbo Baggins joins a quest to reclaim a dwarf kingdom from the dragon Smaug.',
           'book_20.jpg',
           'Read',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Fantasy');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Adventure');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Fantasy'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Adventure'));



INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'The Fault in Our Stars',
           'John Green',
           'Two teenagers with cancer meet at a support group and fall deeply in love.',
           'book_21.jpg',
           'Read',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Romance');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Young Adult');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Romance'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Young Adult'));



INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'Educated',
           'Tara Westover',
           'A memoir about a woman who leaves her survivalist family and pursues education.',
           'book_22.png',
           'Read',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Memoir');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Inspiration');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Memoir'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Inspiration'));



INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'Circe',
           'Madeline Miller',
           'A retelling of the mythological witch Circe as she discovers her power and identity.',
           'book_23.jpg',
           'Read',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Fantasy');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Mythology');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Fantasy'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Mythology'));


INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'A Tree Grows in Brooklyn',
           'Betty Smith',
           'This novel follows Francie Nolan’s coming-of-age in early 1900s Brooklyn as she endures poverty with resilience and hope.',
           'book_3.jpg',
           'Reading',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Coming of Age');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Historical Fiction');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Coming of Age'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Historical Fiction'));




INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'Akin',
           'Emma Donoghue',
           'A retired professor travels to France with his young great-nephew and uncovers long-hidden family secrets.',
           'book_4.jpg',
           'Reading',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Contemporary Fiction');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Historical Fiction');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Contemporary Fiction'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Historical Fiction'));



INSERT INTO books (title, author, description, image, shelf, highlight)
VALUES (
           'The Midnight Library',
           'Matt Haig',
           'A woman discovers a magical library that lets her explore the lives she could have lived.',
           'book_24.jpg',
           'Reading',
           0
       );

INSERT OR IGNORE INTO book_tags (description) VALUES ('Fantasy');
INSERT OR IGNORE INTO book_tags (description) VALUES ('Philosophical');

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Fantasy'));

INSERT INTO books_with_tags (book_id, tag_id)
VALUES (last_insert_rowid(), (SELECT id FROM book_tags WHERE description='Philosophical'));