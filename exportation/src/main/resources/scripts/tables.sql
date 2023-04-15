
CREATE TABLE craftsmen(
    id SERIAL PRIMARY KEY ,
    name VARCHAR(30) NOT NULL CHECK (name ~ '^[a-zA-Z ]+$') ,
    email VARCHAR(50) UNIQUE CHECK (email ~* '^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$'),
    address VARCHAR(30) ,
    phone VARCHAR(10) CHECK (phone ~ '^\d{10}$')
);

CREATE TABLE categories(
    id SERIAL PRIMARY KEY ,
    name VARCHAR(30) NOT NULL ,
    descriptions VARCHAR(200)
);

CREATE TABLE photos(
    id SERIAL PRIMARY KEY ,
    name VARCHAR(20) NOT NULL
);

CREATE TABLE products(
    id SERIAL PRIMARY KEY ,
    name VARCHAR(30) NOT NULL ,
    details VARCHAR(200),
    price DOUBLE PRECISION NOT NULL ,
    categories_id INTEGER REFERENCES categories,
    craftsmen_id INTEGER REFERENCES craftsmen
);

CREATE TABLE products_photos(
    products_id INTEGER REFERENCES products,
    photos_id INTEGER REFERENCES photos
);

CREATE TABLE products_stocks(
    products_id INTEGER REFERENCES products,
    quantities INTEGER,
    date TIMESTAMP NOT NULL
);
CREATE TABLE currencies(
    id SERIAL PRIMARY KEY ,
    name VARCHAR(20) NOT NULL ,
    ariary_value DOUBLE PRECISION NOT NULL ,
    date TIMESTAMP NOT NULL
);
CREATE TABLE country(
    id SERIAL PRIMARY KEY ,
    name VARCHAR(20) NOT NULL ,
    currencies_id INTEGER REFERENCES currencies
);

CREATE TABLE discounts(
    products_id INTEGER REFERENCES products,
    value DOUBLE PRECISION DEFAULT 0 CHECK ( value <= 1 ),
    beginning_date TIMESTAMP NOT NULL ,
    end_date TIMESTAMP
);
CREATE TABLE users(
    id SERIAL PRIMARY KEY ,
    name VARCHAR(50) NOT NULL CHECK (name ~ '^[a-zA-Z ]+$') ,
    email VARCHAR(50) UNIQUE NOT NULL CHECK (email ~* '^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$'),
    password VARCHAR(20) NOT NULL ,
    phone VARCHAR(20) CHECK (phone ~ '^\d{10}$') ,
    date TIMESTAMP NOT NULL ,
    address VARCHAR(30),
    bank_card VARCHAR(30) NOT NULL ,
    country_id INTEGER REFERENCES country
);

CREATE TABLE products_orders(
    id SERIAL PRIMARY KEY ,
    quantities INTEGER,
    products_id INTEGER REFERENCES products,
    user_id INTEGER REFERENCES users,
    orders_date TIMESTAMP NOT NULL ,
    send_orders_date TIMESTAMP
);

CREATE TABLE products_histories(
    id SERIAL PRIMARY KEY ,
    products_id INTEGER REFERENCES products,
    user_id INTEGER DEFAULT 0,
    quantities INTEGER,
    total_price DOUBLE PRECISION,
    purchases_date TIMESTAMP NOT NULL ,
    sales_date TIMESTAMP
);
