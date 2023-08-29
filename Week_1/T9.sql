CREATE TABLE product (
    id              INT,
    name            VARCHAR(50) NOT NULL,
    category        VARCHAR(30),
    weight          INT,
    energy          INT,
    PRIMARY KEY (id),
    UNIQUE (name)
);
 

INSERT INTO product
VALUES (1, 'Fazerina', 'chocolate bar', 37, 548);  

INSERT INTO product
VALUES (2, 'Jim', 'chocolate bar', 14, 366);  

INSERT INTO product
VALUES (3, 'Salta Katten', 'candy bag', 140, 351);

INSERT INTO product
VALUES (4, 'Dumle mix', 'chocolate bag', 220, 474);

INSERT INTO product
VALUES (5, 'Tupla Double Layer Banana', 'chocolate bar', 48, 471);  

INSERT INTO product
VALUES (6, 'Bilar Original', 'candy bag', NULL, NULL);

INSERT INTO product
VALUES (7, 'Sisu Horna', 'candy bag', 40, 370);

DELETE FROM product
WHERE category = 'chocolate bar'