SET search_path TO handmademart;

CREATE TABLE Products (
    id INT PRIMARY KEY ,
    name TEXT NOT NULL ,
    price NUMERIC NOT NULL,
    description TEXT,
    image TEXT CHECK ( price > 0)
);

CREATE TABLE Customers (
    id INT PRIMARY KEY
);

CREATE TABLE Orders (
    cus_id INT REFERENCES Customers(id),
    product_id INT REFERENCES Products(id),
    amount INT NOT NULL DEFAULT 0,
    CONSTRAINT primary_pair PRIMARY KEY (cus_id, product_id)
)