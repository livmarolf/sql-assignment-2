CREATE TABLE users(
 users_id SERIAL PRIMARY KEY,
 name VARCHAR(30),
 email VARCHAR(50)
);

CREATE TABLE products(
products_id SERIAL PRIMARY KEY,
name VARCHAR(30),
price NUMERIC (8,2)
);

CREATE TABLE cart(
cart_id SERIAL PRIMARY KEY,
users_id INT NOT NULL REFERENCES users(users_id),
products_id INT NOT NULL REFERENCES products(products_id),
cart_quantity INT 
);


INSERT INTO users(name, email)
VALUES 
('john','john@gmail.com'),
('sarah','sarah@gmail.com'),
('mark','mark@gmail.com');

INSERT INTO products(name, price)
VALUES
('chicken', 5.99),
('milk',4.99),
('cheese', 3.99);

INSERT INTO cart(users_id, products_id,cart_quantity)
VALUES(1,1,1),(1,2,1),(2,3,1),(2,2,1),(3,1,1),(3,2,1);

-- Get all products in your first user’s cart

SELECT p.name, p.products_id "product id for devs", u.name
FROM products p 
JOIN cart c ON c.products_id = p.products_id
JOIN users u ON u.users_id = c.users_id
WHERE u.users_id = 1;

-- Get products in all carts with all the users’ information

SELECT p.name "product name", c.cart_quantity "product quan.", u.name "users name", u.email "users email", u.users_id "users id"
FROM products p
JOIN cart c
ON c.products_id = p.products_id
JOIN users u 
ON u.users_id = c.users_id

-- Get the total cost of an order (sum the price of all products on an cart)

SELECT SUM (p.price) "total cost of cart"
FROM products p
JOIN cart c
ON c.products_id = p.products_id
JOIN users u 
ON u.users_id = c.users_id
WHERE u.users_id = 2

-- Update the quantity of a product in a user’s cart where the user’s id is 2

UPDATE cart 
SET cart_quantity = 2
WHERE users_id = 2 AND products_id = 1
