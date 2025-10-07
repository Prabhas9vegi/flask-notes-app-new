-- SQL Database Schema for Flask Notes App
CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    email TEXT NOT NULL UNIQUE,
    first_name TEXT NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE note (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    data TEXT NOT NULL,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (id)
);









-- Sample Notes for testing
INSERT INTO user (email, first_name, password) VALUES
('test1@example.com','Prabhas','hashedpassword'),
('test2@example.com','Alice','hashedpassword');

INSERT INTO note (data, user_id) VALUES
('My first note',1),
('Another note',2),
('Yet another note',1);
