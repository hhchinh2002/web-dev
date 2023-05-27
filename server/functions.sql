CREATE OR REPLACE FUNCTION add_product(
    id INT,
    name TEXT,
    price NUMERIC,
    description TEXT DEFAULT NULL,
    image TEXT DEFAULT NULL
) RETURNS VOID AS $$
BEGIN
    INSERT INTO Products (id, name, price, description, image)
    VALUES (id, name, price, description, image);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_product(
    id INT,
) RETURNS VOID AS $$
BEGIN
    DELETE FROM Products
    WHERE id = id;
END;
$$ LANGUAGE plpgsql;
