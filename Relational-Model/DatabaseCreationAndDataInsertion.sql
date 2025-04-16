CREATE DATABASE OurSpace;
USE OurSpace;

-- Create the user table
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    address VARCHAR(500),
    preferedRange FLOAT,
    isCustomer BOOLEAN DEFAULT FALSE,
    isOwner BOOLEAN DEFAULT FALSE,
    rating FLOAT,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create the facility table
CREATE TABLE facility (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ac INT,
    chair INT,
    tables INT,
    fan INT,
    toilet INT,
    kitchen BOOLEAN,
    bed INT,
    others TEXT,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create the space table
CREATE TABLE space (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    oid INT NOT NULL,
    location VARCHAR(100),
    address VARCHAR(500),
    size FLOAT,
    numRooms INT,
    fid INT,
    hourlyRate FLOAT,
    halfdayRate FLOAT,
    fulldayRate FLOAT,
    rating FLOAT,
    rentFrom TIMESTAMP,
    rentTo TIMESTAMP,
    status ENUM('open', 'closed') NOT NULL,
    remark TEXT,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (oid) REFERENCES user(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fid) REFERENCES facility(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Create the feedback table
CREATE TABLE feedback (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cid INT NOT NULL,
    sid INT NOT NULL,
    reviews TEXT,
    rating FLOAT,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cid) REFERENCES user(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (sid) REFERENCES space(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Create the booking table
CREATE TABLE booking (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cid INT NOT NULL,
    sid INT NOT NULL,
    bookingDate DATETIME NOT NULL,
    totalDuration TIME NOT NULL,
    startTime TIMESTAMP NOT NULL,
    endTime TIMESTAMP NOT NULL,
    discount FLOAT DEFAULT 0,
    spacePrice FLOAT NOT NULL,
    sysFee FLOAT AS (ROUND((spacePrice * (100 - discount) / 100) * 0.03, 2)) STORED,
	total FLOAT AS (ROUND((spacePrice * (100 - discount) / 100) + sysFee, 2)) STORED,
    status ENUM('available', 'booked', 'cancelled', 'completed') NOT NULL,
    remark TEXT,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (cid) REFERENCES user(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (sid) REFERENCES space(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Create the rent table
CREATE TABLE rent (
    id INT AUTO_INCREMENT PRIMARY KEY,
    bid INT NOT NULL,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (bid) REFERENCES booking(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Create the payment table
CREATE TABLE payment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rid INT NOT NULL,
    bid INT NOT NULL,
    amountToPay FLOAT NOT NULL,
    paid FLOAT NOT NULL,
    unpaid FLOAT NOT NULL,
    transacId VARCHAR(200),
    bank VARCHAR(200),
    status ENUM('pending', 'completed', 'refunded', 'cancelled') NOT NULL,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (rid) REFERENCES rent(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (bid) REFERENCES booking(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- ===============================================================================================================================

-- Insert mock data into user table
INSERT INTO user (name, email, phone, address, preferedRange, isCustomer, isOwner, rating)
VALUES 
('John Doe', 'johndoe@example.com', '1234567890', '123 Main St', 10.0, TRUE, FALSE, 4.5),
('Jane Smith', 'janesmith@example.com', '0987654321', '456 Elm St', 15.0, TRUE, FALSE, 4.8),
('Alice Johnson', 'alicej@example.com', '1231231234', '789 Oak St', 20.0, TRUE, FALSE, 4.2),
('Bob Brown', 'bobb@example.com', '3213213214', '321 Birch St', 15.0, TRUE, TRUE, 3.5),
('Chris Green', 'chrisg@example.com', '4564564567', '654 Pine St', 25.0, FALSE, TRUE, 2.5),
('David White', 'davidw@example.com', '7897897890', '987 Cedar St', 30.0, TRUE, TRUE, 2.0),
('Eva Black', 'evab@example.com', '1471471470', '258 Maple St', 35.0, TRUE, FALSE, 4.3),
('Frank Blue', 'frankb@example.com', '3693693690', '369 Walnut St', 40.0, TRUE, FALSE, 4.6),
('Grace Pink', 'gracep@example.com', '7417417410', '741 Cherry St', 45.0, FALSE, TRUE, 3.0),
('Hannah Yellow', 'hannahy@example.com', '8528528520', '852 Spruce St', 50.0, TRUE, FALSE, 4.7),
('Irene Orange', 'ireneo@example.com', '9638527410', '963 Cypress St', 10.0, TRUE, FALSE, 4.5),
('Jack Purple', 'jackp@example.com', '8529637410', '852 Fir St', 15.0, TRUE, FALSE, 4.8),
('Kelly Red', 'kellyr@example.com', '7412589630', '741 Poplar St', 20.0, TRUE, FALSE, 4.2),
('Larry Silver', 'larrys@example.com', '3698521470', '369 Linden St', 15.0, TRUE, TRUE, 2.2),
('Monica Gold', 'monicag@example.com', '2589631470', '258 Ash St', 25.0, FALSE, TRUE, 4.9),
('Nathan Bronze', 'nathanb@example.com', '1472583690', '147 Beech St', 30.0, TRUE, TRUE, 2.5),
('Olivia Turquoise', 'oliviat@example.com', '3697412580', '369 Alder St', 35.0, TRUE, FALSE, 4.3),
('Paul Violet', 'paulv@example.com', '2587413690', '258 Magnolia St', 40.0, TRUE, FALSE, 4.6),
('Quincy Navy', 'quincyn@example.com', '1473692580', '147 Sequoia St', 45.0, FALSE, TRUE, 3.5),
('Rachel Teal', 'rachelt@example.com', '9631472580', '963 Maple St', 50.0, TRUE, FALSE, 4.7);

-- Insert mock data into user table
INSERT INTO user (name, email, phone, address, preferedRange, isCustomer, isOwner, rating)
VALUES 
('John Doe', 'johndoe@example.com', '1234567890', '123 Main St', 10.0, TRUE, FALSE, 4.5),
('Jane Smith', 'janesmith@example.com', '0987654321', '456 Elm St', 15.0, TRUE, FALSE, 4.8),
('Alice Johnson', 'alicej@example.com', '1231231234', '789 Oak St', 20.0, TRUE, FALSE, 4.2),
('Bob Brown', 'bobb@example.com', '3213213214', '321 Birch St', 15.0, TRUE, TRUE, 3.5),
('Chris Green', 'chrisg@example.com', '4564564567', '654 Pine St', 25.0, FALSE, TRUE, 2.5),
('David White', 'davidw@example.com', '7897897890', '987 Cedar St', 30.0, TRUE, TRUE, 2.0),
('Eva Black', 'evab@example.com', '1471471470', '258 Maple St', 35.0, TRUE, FALSE, 4.3),
('Frank Blue', 'frankb@example.com', '3693693690', '369 Walnut St', 40.0, TRUE, FALSE, 4.6),
('Grace Pink', 'gracep@example.com', '7417417410', '741 Cherry St', 45.0, FALSE, TRUE, 3.0),
('Hannah Yellow', 'hannahy@example.com', '8528528520', '852 Spruce St', 50.0, TRUE, FALSE, 4.7),
('Irene Orange', 'ireneo@example.com', '9638527410', '963 Cypress St', 10.0, TRUE, FALSE, 4.5),
('Jack Purple', 'jackp@example.com', '8529637410', '852 Fir St', 15.0, TRUE, FALSE, 4.8),
('Kelly Red', 'kellyr@example.com', '7412589630', '741 Poplar St', 20.0, TRUE, FALSE, 4.2),
('Larry Silver', 'larrys@example.com', '3698521470', '369 Linden St', 15.0, TRUE, TRUE, 2.2),
('Monica Gold', 'monicag@example.com', '2589631470', '258 Ash St', 25.0, FALSE, TRUE, 4.9),
('Nathan Bronze', 'nathanb@example.com', '1472583690', '147 Beech St', 30.0, TRUE, TRUE, 2.5),
('Olivia Turquoise', 'oliviat@example.com', '3697412580', '369 Alder St', 35.0, TRUE, FALSE, 4.3),
('Paul Violet', 'paulv@example.com', '2587413690', '258 Magnolia St', 40.0, TRUE, FALSE, 4.6),
('Quincy Navy', 'quincyn@example.com', '1473692580', '147 Sequoia St', 45.0, FALSE, TRUE, 3.5),
('Rachel Teal', 'rachelt@example.com', '9631472580', '963 Maple St', 50.0, TRUE, FALSE, 4.7);

-- Insert mock data into facility table
INSERT INTO facility (ac, chair, tables, fan, toilet, kitchen, bed, others)
VALUES 
(2, 10, 5, 2, 1, TRUE, 2, 'TV, WiFi'),
(3, 15, 7, 3, 2, FALSE, 3, 'WiFi, Parking'),
(1, 8, 4, 1, 1, TRUE, 1, 'TV, WiFi, Parking'),
(4, 20, 10, 4, 3, TRUE, 4, 'TV, WiFi, Pool'),
(2, 12, 6, 2, 1, FALSE, 2, 'WiFi, Gym'),
(3, 18, 9, 3, 2, TRUE, 3, 'TV, WiFi, Gym'),
(1, 6, 3, 1, 1, FALSE, 1, 'WiFi, Parking, Gym'),
(4, 22, 11, 4, 3, TRUE, 4, 'TV, WiFi, Pool, Gym'),
(2, 14, 7, 2, 1, FALSE, 2, 'WiFi, Parking, Pool'),
(3, 19, 9, 3, 2, TRUE, 3, 'TV, WiFi, Parking, Gym'),
(2, 10, 5, 2, 1, TRUE, 2, 'TV, WiFi, Projector'),
(3, 15, 7, 3, 2, FALSE, 3, 'WiFi, Parking, Projector'),
(1, 8, 4, 1, 1, TRUE, 1, 'TV, WiFi, Parking, Projector'),
(4, 20, 10, 4, 3, TRUE, 4, 'TV, WiFi, Pool, Projector'),
(2, 12, 6, 2, 1, FALSE, 2, 'WiFi, Gym, Projector'),
(3, 18, 9, 3, 2, TRUE, 3, 'TV, WiFi, Gym, Projector'),
(1, 6, 3, 1, 1, FALSE, 1, 'WiFi, Parking, Gym, Projector'),
(4, 22, 11, 4, 3, TRUE, 4, 'TV, WiFi, Pool, Gym, Projector'),
(2, 14, 7, 2, 1, FALSE, 2, 'WiFi, Parking, Pool, Projector'),
(3, 19, 9, 3, 2, TRUE, 3, 'TV, WiFi, Parking, Gym, Projector');

-- Insert mock data into space table
INSERT INTO space (name, oid, location, address, size, numRooms, fid, hourlyRate, halfdayRate, fulldayRate, rating, rentFrom, rentTo, status, remark)
VALUES 
('Space A', 4, 'Downtown', '123 Space St', 100.0, 3, 1, 20.0, 100.0, 180.0, 4.5, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'open', 'Great space for events'),
('Space B', 5, 'Uptown', '456 Space St', 200.0, 5, 2, 30.0, 150.0, 270.0, 4.7, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'open', 'Spacious and modern'),
('Space C', 6, 'Midtown', '789 Space St', 150.0, 4, 3, 25.0, 130.0, 240.0, 4.6, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'open', 'Ideal for meetings'),
('Space D', 4, 'Suburb', '321 Space St', 120.0, 3, 4, 20.0, 100.0, 180.0, 4.8, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'open', 'Cozy and comfortable'),
('Space E', 5, 'City Center', '654 Space St', 180.0, 4, 5, 28.0, 140.0, 250.0, 4.9, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'open', 'Luxury space'),
('Space F', 6, 'Old Town', '987 Space St', 130.0, 3, 6, 22.0, 110.0, 200.0, 4.5, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'open', 'Historic charm'),
('Space G', 4, 'New Town', '258 Space St', 160.0, 4, 7, 26.0, 135.0, 230.0, 4.7, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'open', 'Modern amenities'),
('Space H', 5, 'East Side', '369 Space St', 140.0, 3, 8, 24.0, 120.0, 215.0, 4.6, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'open', 'Quiet and peaceful'),
('Space I', 6, 'West Side', '741 Space St', 170.0, 4, 9, 27.0, 145.0, 260.0, 4.8, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'open', 'Spacious'),
('Space J', 4, 'South Side', '852 Space St', 110.0, 3, 10, 18.0, 90.0, 160.0, 4.4, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'open', 'Affordable and convenient'),
('Space K', 4, 'North Side', '963 Space St', 120.0, 3, 11, 20.0, 100.0, 180.0, 4.5, '2025-02-01 08:00:00', '2025-02-28 17:00:00', 'open', 'Spacious event space'),
('Space L', 5, 'Central Park', '852 Space St', 180.0, 4, 12, 30.0, 150.0, 270.0, 4.7, '2025-02-01 08:00:00', '2025-02-28 17:00:00', 'open', 'Modern and elegant'),
('Space M', 6, 'Old City', '741 Space St', 160.0, 4, 13, 25.0, 130.0, 240.0, 4.6, '2025-02-01 08:00:00', '2025-02-28 17:00:00', 'open', 'Perfect for conferences'),
('Space N', 4, 'Tech Hub', '369 Space St', 140.0, 3, 14, 22.0, 110.0, 200.0, 4.8, '2025-02-01 08:00:00', '2025-02-28 17:00:00', 'open', 'High-tech facilities'),
('Space O', 5, 'Greenfield', '258 Space St', 130.0, 3, 15, 18.0, 90.0, 160.0, 4.9, '2025-02-01 08:00:00', '2025-02-28 17:00:00', 'open', 'Eco-friendly space'),
('Space P', 6, 'Riverside', '147 Space St', 170.0, 4, 16, 28.0, 140.0, 250.0, 4.5, '2025-02-01 08:00:00', '2025-02-28 17:00:00', 'open', 'Beautiful river view'),
('Space Q', 4, 'Downtown', '963 Space St', 150.0, 4, 17, 24.0, 120.0, 215.0, 4.7, '2025-02-01 08:00:00', '2025-02-28 17:00:00', 'open', 'Central location'),
('Space R', 5, 'University Area', '852 Space St', 190.0, 4, 18, 27.0, 135.0, 230.0, 4.6, '2025-02-01 08:00:00', '2025-02-28 17:00:00', 'open', 'Ideal for workshops'),
('Space S', 6, 'Industrial Park', '741 Space St', 110.0, 3, 19, 16.0, 80.0, 145.0, 4.8, '2025-02-01 08:00:00', '2025-02-28 17:00:00', 'open', 'Affordable and practical'),
('Space T', 4, 'Cultural District', '369 Space St', 200.0, 5, 20, 32.0, 160.0, 290.0, 4.4, '2025-02-01 08:00:00', '2025-02-28 17:00:00', 'open', 'Rich cultural vibe');

-- Insert mock data into feedback table
INSERT INTO feedback (cid, sid, reviews, rating)
VALUES 
(1, 1, 'Great space, very clean and well-maintained.', 4.5),
(1, 2, 'It is fine', 3.5),
(2, 2, 'Spacious and modern, perfect for our event.', 4.7),
(1, 3, 'This is bad room', 2.9),
(2, 3, 'This is fine', 2.9),
(3, 3, 'Ideal for meetings, had a great experience.', 4.6),
(4, 4, 'Cozy and comfortable, highly recommend.', 4.8),
(5, 5, 'Luxury space, worth every penny.', 4.9),
(6, 6, 'Historic charm, very unique.', 4.5),
(7, 7, 'Modern amenities, very convenient.', 4.7),
(8, 8, 'Quiet and peaceful, loved it.', 3.5),
(9, 9, 'Spacious and comfortable.', 4.8),
(10, 10, 'Affordable and convenient, great value.', 2.9),
(1, 11, 'Spacious event space, highly recommend.', 4.5),
(2, 12, 'Modern and elegant, perfect for our needs.', 4.7),
(3, 13, 'Perfect for conferences, very satisfied.', 2.5),
(4, 14, 'High-tech facilities, great experience.', 4.8),
(5, 15, 'Eco-friendly space, very impressive.', 3.0),
(6, 16, 'Beautiful river view, loved it.', 2.5),
(7, 17, 'Central location, very convenient.', 4.7),
(8, 18, 'Ideal for workshops, highly recommend.', 3.0),
(9, 19, 'Affordable and practical, great value.', 4.8),
(10, 20, 'Rich cultural vibe, very unique.', 4.4);

-- Insert mock data into booking table
INSERT INTO booking (cid, sid, bookingDate, totalDuration, startTime, endTime, discount, spacePrice, status, remark)
VALUES 
(1, 1, '2025-01-10 09:00:00', '02:00:00', '2025-01-10 09:00:00', '2025-01-10 11:00:00', 10.0, 40.0, 'completed', 'First booking'),
(1, 2, '2025-01-13 09:00:00', '02:00:00', '2025-01-13 09:00:00', '2025-01-13 11:00:00', 15.0, 90.0, 'completed', 'Customer 1'),
(2, 2, '2025-02-12 10:00:00', '03:00:00', '2025-02-12 10:00:00', '2025-02-12 13:00:00', 15.0, 90.0, 'completed', 'Second booking'),
(3, 3, '2025-03-15 11:00:00', '04:00:00', '2025-03-15 11:00:00', '2025-03-15 15:00:00', 12.0, 100.0, 'completed', 'Customer 3'),
(3, 4, '2025-03-14 11:00:00', '04:00:00', '2025-03-14 11:00:00', '2025-03-14 15:00:00', 10.0, 100.0, 'completed', 'Third booking'),
(4, 4, '2025-04-16 12:00:00', '05:00:00', '2025-04-16 12:00:00', '2025-04-16 17:00:00', 10.0, 100.0, 'completed', 'Fourth booking'),
(5, 5, '2025-05-18 09:00:00', '02:00:00', '2025-05-18 09:00:00', '2025-05-18 11:00:00', 14.0, 56.0, 'completed', 'Fifth booking'),
(6, 6, '2025-06-20 10:00:00', '03:00:00', '2025-06-20 10:00:00', '2025-06-20 13:00:00', 11.0, 66.0, 'completed', 'Sixth booking'),
(7, 7, '2025-07-22 11:00:00', '04:00:00', '2025-07-22 11:00:00', '2025-07-22 15:00:00', 13.0, 78.0, 'completed', 'Seventh booking'),
(8, 8, '2025-08-24 12:00:00', '05:00:00', '2025-08-24 12:00:00', '2025-08-24 17:00:00', 12.0, 120.0, 'completed', 'Eighth booking'),
(9, 9, '2025-09-26 09:00:00', '02:00:00', '2025-09-26 09:00:00', '2025-09-26 11:00:00', 13.0, 54.0, 'completed', 'Ninth booking'),
(10, 10, '2025-10-28 10:00:00', '03:00:00', '2025-10-28 10:00:00', '2025-10-28 13:00:00', 9.0, 60.0, 'completed', 'Tenth booking'),
(1, 11, '2025-11-05 09:00:00', '02:00:00', '2025-11-05 09:00:00', '2025-11-05 11:00:00', 10.0, 40.0, 'completed', 'New booking 1'),
(2, 12, '2025-12-07 10:00:00', '03:00:00', '2025-12-07 10:00:00', '2025-12-07 13:00:00', 15.0, 90.0, 'completed', 'New booking 2'),
(3, 13, '2025-01-09 11:00:00', '04:00:00', '2025-01-09 11:00:00', '2025-01-09 15:00:00', 12.0, 100.0, 'completed', 'New booking 3'),
(4, 14, '2025-02-11 12:00:00', '05:00:00', '2025-02-11 12:00:00', '2025-02-11 17:00:00', 10.0, 110.0, 'completed', 'New booking 4'),
(5, 15, '2025-03-13 09:00:00', '02:00:00', '2025-03-13 09:00:00', '2025-03-13 11:00:00', 14.0, 56.0, 'completed', 'New booking 5'),
(6, 16, '2025-04-15 10:00:00', '03:00:00', '2025-04-15 10:00:00', '2025-04-15 13:00:00', 11.0, 66.0, 'completed', 'New booking 6'),
(7, 17, '2025-05-17 11:00:00', '04:00:00', '2025-05-17 11:00:00', '2025-05-17 15:00:00', 13.0, 78.0, 'completed', 'New booking 7'),
(8, 18, '2025-06-19 12:00:00', '05:00:00', '2025-06-19 12:00:00', '2025-06-19 17:00:00', 12.0, 120.0, 'completed', 'New booking 8'),
(9, 19, '2025-07-21 09:00:00', '02:00:00', '2025-07-21 09:00:00', '2025-07-21 11:00:00', 13.0, 54.0, 'completed', 'New booking 9'),
(10, 20, '2025-08-23 10:00:00', '03:00:00', '2025-08-23 10:00:00', '2025-08-23 13:00:00', 16.0, 65.0, 'completed', 'New booking 10');

-- Insert mock data into rent table
INSERT INTO rent (bid)
VALUES 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20);

-- Insert mock data into payment table
INSERT INTO payment (rid, bid, amountToPay, paid, unpaid, transacId, bank, status)
VALUES 
(1, 1, 45.0, 45.0, 0.0, 'TXN12345', 'Bank A', 'completed'),
(2, 2, 100.0, 100.0, 0.0, 'TXN12346', 'Bank B', 'completed'),
(3, 3, 110.0, 110.0, 0.0, 'TXN12347', 'Bank C', 'completed'),
(4, 4, 110.0, 110.0, 0.0, 'TXN12348', 'Bank D', 'completed'),
(5, 5, 61.0, 61.0, 0.0, 'TXN12349', 'Bank E', 'completed'),
(6, 6, 71.0, 71.0, 0.0, 'TXN12350', 'Bank F', 'completed'),
(7, 7, 83.0, 83.0, 0.0, 'TXN12351', 'Bank G', 'completed'),
(8, 8, 130.0, 130.0, 0.0, 'TXN12352', 'Bank H', 'completed'),
(9, 9, 59.0, 59.0, 0.0, 'TXN12353', 'Bank I', 'completed'),
(10, 10, 65.0, 65.0, 0.0, 'TXN12354', 'Bank J', 'completed'),
(11, 11, 45.0, 45.0, 0.0, 'TXN12355', 'Bank A', 'completed'),
(12, 12, 100.0, 100.0, 0.0, 'TXN12356', 'Bank B', 'completed'),
(13, 13, 110.0, 110.0, 0.0, 'TXN12357', 'Bank C', 'completed'),
(14, 14, 120.0, 120.0, 0.0, 'TXN12358', 'Bank D', 'completed'),
(15, 15, 61.0, 61.0, 0.0, 'TXN12359', 'Bank E', 'completed'),
(16, 16, 71.0, 71.0, 0.0, 'TXN12360', 'Bank F', 'completed'),
(17, 17, 83.0, 83.0, 0.0, 'TXN12361', 'Bank G', 'completed'),
(18, 18, 130.0, 130.0, 0.0, 'TXN12362', 'Bank H', 'completed'),
(19, 19, 59.0, 59.0, 0.0, 'TXN12363', 'Bank I', 'completed'),
(20, 20, 65.0, 65.0, 0.0, 'TXN12364', 'Bank J', 'completed');