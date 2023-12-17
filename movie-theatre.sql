CREATE TABLE customer(
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    rewards_member BOOLEAN
)

CREATE TABLE movie(
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    running_time VARCHAR(20),
    rating VARCHAR(50),
    release_date DATE
)

CREATE TABLE ticket(
    ticket_id INT PRIMARY KEY,
    customer_id INTEGER,
    movie_id INTEGER,
    date_and_time VARCHAR(100),
    seat_number VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
)

CREATE TABLE concession(
    concession_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    price NUMERIC(5,2),
    sold_out BOOLEAN
)


INSERT INTO customer(first_name, last_name, email, phone_number, rewards_member)
VALUES
    ('John', 'Doe', 'john.doe@email.com', '111-111-1111', false),
    ('Zak', 'Abdu', 'zakabdu@gmail.com', '619-100-1000', true);

INSERT INTO movie(movie_id, title, running_time, rating, release_date)
VALUES
    (1, 'Inception', '02:28:00', 'R', '2010-07-16'),
    (2, 'Up', '01:45:00', 'G', '2011-09-10');

INSERT INTO ticket(ticket_id, customer_id, movie_id, date_and_time, seat_number)
VALUES
    (1, 1, 2, '2023-12-21 08:30:00 PM', 'D4'),
    (2, 2, 1, '2024-01-09 10:30:00 PM', 'B3' );

INSERT INTO concession(concession_id, item_name, price, sold_out)
VALUES
    (1, 'Popcorn', 5.99, false),
    (2, 'Soda', 2.99, false),
    (3, 'Hot Dog', 4.99, true);



SELECT * FROM movie
SELECT * FROM ticket
SELECT * FROM concession