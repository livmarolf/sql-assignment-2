CREATE TABLE user(
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(20),
    user_email VARCHAR(100)
);

CREATE TABLE products(
    products_id SERIAL PRIMARY KEY,
    product_name VARCHAR(40),
    product_description VARCHAR(560),
    product_image text,
    product_price NUMERIC (6,2),
    product_is_discount BOOLEAN,
    product_discounted_price NUMERIC (6,2)
);

CREATE TABLE cart(
    cart_id SERIAL PRIMARY KEY,
    user_id NOT NULL REFRENCES user(user_id),
    product_id NOT NULL REFRENCES product(product_id),
    cart_item_quantity INT(10)
)