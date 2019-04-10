CREATE DATABASE managerLibrary;
USE managerLibrary;
CREATE TABLE books(
                      book_code INT AUTO_INCREMENT PRIMARY KEY ,
                      bookName VARCHAR(50) NOT NULL ,
                      NXB VARCHAR(100) NOT NULL ,
                      author VARCHAR(50) NOT NULL ,
                      yearOfPublication DATE NOT NULL ,
                      numberOfPublication INT NOT NULL ,
                      priceBook DOUBLE NOT NULL ,
                      photo text NOT NULL,
                      category_code INT,
                      FOREIGN KEY (category_code) REFERENCES category(category_code),
                      borrow_order_code INT,
                      FOREIGN KEY (borrow_order_code) REFERENCES borroworder(borrow_order_code)
);
CREATE TABLE category(
                         category_code INT AUTO_INCREMENT PRIMARY KEY ,
                         kindOfBook VARCHAR(40) NOT NULL
);
CREATE TABLE students(
                         card_code INT AUTO_INCREMENT PRIMARY KEY ,
                         studentName VARCHAR(40) NOT NULL ,
                         dateOfBirth DATE NOT NULL ,
                         address VARCHAR(80) NOT NULL ,
                         email VARCHAR(50) NOT NULL ,
                         phoneNumber VARCHAR(15) NOT NULL ,
                         photo text NOT NULL
);
CREATE TABLE borroworder(
                            borrow_order_code INT AUTO_INCREMENT PRIMARY KEY ,
                            startDay DATE NOT NULL ,
                            endDay DATE NOT NULL ,
                            paymentDay DATE NOT NULL,
                            statusDescription VARCHAR(50),
                            card_code INT,
                            FOREIGN KEY (card_code)REFERENCES students(card_code)
);
