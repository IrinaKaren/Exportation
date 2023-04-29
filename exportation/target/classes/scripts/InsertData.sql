-- Insertion de données dans la table currencies
INSERT INTO currencies (name, ariary_value, date) 
VALUES 
('Euro', 4438.99, '2023-04-15 10:30:00'),
('Dollar', 3750.50, '2023-04-15 10:30:00'),
('Yen', 33.76, '2023-04-15 10:30:00');

-- Insertion de données dans la table country
INSERT INTO country (name, currencies_id) VALUES
    ('France', 1),
    ('USA', 2),
    ('Espagne', 1);

-- Insertion de données dans la table users
INSERT INTO users (name, email, password, phone, date, address, bank_card, country_id) VALUES
    ('John Doe', 'john.doe@example.com', 'mypassword', '0123456789', CURRENT_TIMESTAMP, '10 rue de la paix', '1234567890123456', 1),
    ('Jane Smith', 'jane.smith@example.com', 'secret', '9876543210', CURRENT_TIMESTAMP, '22 Baker Street', '9876543210987654', 2),
    ('Bob Johnson', 'bob.johnson@example.com', 'password', NULL, CURRENT_TIMESTAMP, '7 avenue des Champs Elysées', '1111222233334444', 1);
