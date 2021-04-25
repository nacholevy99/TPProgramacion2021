CREATE TABLE usuarios (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
mail VARCHAR(300) NOT NULL,
contraseña VARCHAR(300) NOT NULL,
fecha_nacimiento DATE NOT NULL,
edad INT
);

CREATE TABLE productos (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
url VARCHAR(1000) NOT NULL,
nombre_producto VARCHAR(300) NOT NULL,
fecha_creacion DATE NOT NULL,
usuarios_id INT UNSIGNED,
FOREIGN KEY (usuarios_id) REFERENCES usuarios (id)
);

CREATE TABLE comentarios (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
productos_id INT UNSIGNED,
usuarios_id INT UNSIGNED,
comentario TEXT NOT NULL,
fecha_creacion DATE NOT NULL,
FOREIGN KEY (usuarios_id) REFERENCES usuarios (id),
FOREIGN KEY (productos_id) REFERENCES productos (id)
);


INSERT INTO usuarios 
VALUES (DEFAULT, "juanlopez@gmail.com", "juanlopez1223", "1992-06-17", 27);

INSERT INTO usuarios
VALUES (DEFAULT, "mvanderusten@udesa.edu.ar","mvander1202","1997-01-12",24);

INSERT INTO usuarios
VALUES (DEFAULT, "slemoine@udesa.edu.ar","slemo0509","1999-09-05",21);

INSERT INTO usuarios
VALUES (DEFAULT, "ilevy@udesa.edu.ar","ilevy0607","1997-07-06",22);

INSERT INTO usuarios
VALUES (DEFAULT, "fjfinardi@udesa.edu.ar","franfi","1992-06-07",27);

SELECT * FROM usuarios;
DELETE FROM usuarios WHERE id=2;

INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto1.webp", "Cuchas personalizadas", "2021-04-21", 1);
INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto3.jpg", "Collar Tactico Militar", "2021-02-03", 6);
INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto4.webp", "Barra Nutritiva", "2021-03-18", 5);
INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto2.jpg", "Comedor Bebedero", "2020-11-25", 3);
INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto5.webp", "Comedero Automatico", "2021-04-17", 4);
INSERT INTO productos
VALUES (DEFAULT, "/images/product/producto6.webp", "Pelota para alimento dosificadora", "2020-02-17", 3);
INSERT INTO productos
VALUES (DEFAULT, "/images/product/producto7.webp", "Comedero Automatico Dispenser", "2021-01-13", 1);
INSERT INTO productos
VALUES (DEFAULT, "/images/product/producto8.webp", "Colchon Cama Perro Grande", "2021-04-05", 4);
INSERT INTO productos
VALUES (DEFAULT, "/images/product/producto9.webp", "Colchón Liso Antidesgarro", "2021-03-13", 5);
INSERT INTO productos
VALUES (DEFAULT, "/images/product/producto10.webp", "Comedor Perros Acero Inox", "2021-02-17", 6);

SELECT * FROM productos;

INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 2,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 4,6, "Muy bueno! Mi mascota esta feliz", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 7,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 8,3, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 9,6, "Muy bueno! Mi mascota esta feliz", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 10,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 10,4, "Recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 9,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 8,3, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 7,6, "Muy bueno! Mi mascota esta feliz", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 4,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 2,6, "Muy bueno! Mi mascota esta feliz", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 2,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 4,6, "Muy bueno! Mi mascota esta feliz", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 7,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 8,3, "Super práctico", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 9,6, "Muy recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 10,4, "Muy bueno! Mi mascota esta feliz", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 2,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 4,6, "Muy bueno! Mi mascota esta feliz", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 7,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 8,3, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 9,6, "Muy bueno! Mi mascota esta feliz", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 10,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 10,4, "Recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 9,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 8,3, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 7,6, "Muy bueno! Mi mascota esta feliz", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 4,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 2,6, "Muy bueno! Mi mascota esta feliz", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 2,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 4,6, "Muy bueno! Mi mascota esta feliz", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 7,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 8,3, "Super práctico", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 9,6, "Muy recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 10,4, "Muy bueno! Mi mascota esta feliz", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 7,6, "Muy bueno! Mi mascota esta feliz", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 4,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 2,6, "Muy bueno! Mi mascota esta feliz", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Recomendable", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 2,4, "Lo use y lo recomiendo!", "2021-04-05");
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2020-11-23");

SELECT * FROM comentarios