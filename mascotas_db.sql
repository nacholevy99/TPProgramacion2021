DROP database IF exists mascotas_db;
CREATE database mascotas_db;
USE mascotas_db;

CREATE TABLE usuarios (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(300),
mail VARCHAR(300) ,
contraseña VARCHAR(300) ,
fecha DATE ,
edad INT,
url VARCHAR(1000) ,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updatedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP

);

CREATE TABLE productos (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
url VARCHAR(1000) ,
nombre_producto VARCHAR(300) ,
fecha_creacion DATE ,
descripcion varchar(1000), 
usuarios_id INT UNSIGNED,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updatedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (usuarios_id) REFERENCES usuarios (id)
);

CREATE TABLE comentarios (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
productos_id INT UNSIGNED,
usuarios_id INT UNSIGNED,
comentario TEXT ,
fecha_creacion DATE NOT NULL,
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updatedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (usuarios_id) REFERENCES usuarios (id),
FOREIGN KEY (productos_id) REFERENCES productos (id)
);


INSERT INTO usuarios 
VALUES (DEFAULT, "juan_lopez_", "juanlopez@gmail.com", "juanlopez1223", "1992-06-17", 27,"juan-lopez.jpeg", DEFAULT, DEFAULT);

INSERT INTO usuarios
VALUES (DEFAULT, "m_vanderusten", "mvanderusten@udesa.edu.ar","mvander1201","1997-01-12",24,"juan-lopez.jpeg", DEFAULT, DEFAULT);

INSERT INTO usuarios
VALUES (DEFAULT, "santi_lemo", "slemoine@udesa.edu.ar","slemo0509","1999-09-05",21,"santi-lemoine.png", DEFAULT, DEFAULT);

INSERT INTO usuarios
VALUES (DEFAULT, "ilevi", "ilevy@udesa.edu.ar","ilevy0607","1997-07-06",22,"nacho-levy.jpg", DEFAULT, DEFAULT);

INSERT INTO usuarios
VALUES (DEFAULT, "finardi.FJ", "fjfinardi@udesa.edu.ar","franfi","1992-06-07",27,"fran-finardi.JPG", DEFAULT, DEFAULT);

SELECT * FROM usuarios;

INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto1.webp", "Cuchas personalizadas", "2021-04-21", 
"* Diseñada con el tamaño ideal para razas medianas y grandes.
* Piso elevado del suelo para aislar y mantener seco al perro.
* Material resistente a la humedad, fácil de limpiar.
* Para uso en interiores y exteriores, con protección UV.
* El diseño del techo evita que la lluvia moje el interior", 1, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto3.jpg", "Collar Tactico Militar", "2021-02-03", "Material duradero: este collar de perro resistente está hecho de material de nailon 1000D de alta calidad y duradero con costuras limpias y forro acolchado suave para evitar rozaduras para la piel y el cabello de su perro con un ajuste cómodo.", 2, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto4.webp", "Barra Nutritiva", "2021-03-18",
"- Barra nutritiva a base de harina de soja, maíz, trigo y minerales orgánicos.
- Suplemento nutricional complementario al alimento principal.
- Contenido 70gr por barra.
- Packs de 20 unidades.
- Directo de fábrica.", 5, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto2.jpg", "Comedor Bebedero", "2020-11-25", 
"Comedero bebedero para perros
- Hecho en madera Kiri, muy liviana y resistente
- Resistente al agua
- Platos removibles", 3, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto5.webp", "Comedero Automatico", "2021-04-17", 
"Quién alimenta a tus perro o gato cuando no estás o si te olvidas? Este aparato soluciona tu problema y
alimenta a las mascotas diariamente y a la misma hora.
Desde ahora, cuando tengas que salir fuera de casa por el día, o por varios días y no puedas llevar a tu mascota, no tendrás que preocuparte por “quien la alimentará”; con los alimentadores dispondrá de comida de forma programada y automática.", 4, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto6.webp", "Pelota para alimento dosificadora", "2020-02-17", 
"Pelota dosificadora de alimentos para perros.
Color celeste
Mide 10 cm de diámetro",3, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto7.webp", "Comedero Automatico Dispenser", "2021-01-13", 
"Quién alimenta a tus perro o gato cuando no estás o si te olvidas? Este aparato soluciona tu problema y alimenta a las mascotas diariamente y a la misma hora.
Desde ahora, cuando tengas que salir fuera de casa por el día, o por varios días y no puedas llevar a tu mascota, no tendrás que preocuparte por “quien la alimentará”; con los alimentadores dispondrá de comida de forma programada y automática.", 1, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto8.webp", "Colchon Cama Perro Grande", "2021-04-05", 
"Ideal para perros de tamaño grande.
Se recomienda para las siguientes razas: Dálmata, Golden Retriever, Labrador, Huskey Siberiano, Weimaraner, Pointer, Rottweiler, Pastor alemán, Foxhound, Braco italiano, Pastor belga, Braco alemán, Boyero de Berna, Akita japonés, Mastín napolitano.", 4, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto9.webp", "Colchón Liso Antidesgarro", "2021-03-13",
 "CARACTERISTICAS:
RELLENO: Gomaespuma en copos de alta densidad
FUNDA INTERNA: Funda interna de fiselina que contiene el relleno
TELA: Cordura lisa
La tela de cordura es un tejido de una fibra sintética de alto rendimiento que es resistente a la abrasión, al rasgado o desgarro, a la tracción y al frisado o pilling (formación de pequeños nudos o bolitas) con una gran durabilidad y resistencia a cualquier tipo de climas.",5, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "/images/products/producto10.webp", "Comedor Perros Acero Inox", "2021-02-17", 
"COMEDERO DE ACERO INOXIDABLE CON BASE ANTIDESLIZANTE
* Su base de goma evita el deslizamiento y los ruidos molestos.
* Fácil de limpiar lo que lo hace muy higiénico", 2, DEFAULT, DEFAULT);

SELECT * FROM productos;


INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 4,2, "Muy bueno! Mi mascota esta feliz", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 7,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 8,3, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 9,2, "Muy bueno! Mi mascota esta feliz", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 10,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 10,4, "Recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 9,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 8,3, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 7,2, "Muy bueno! Mi mascota esta feliz", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 4,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,2, "Muy bueno! Mi mascota esta feliz", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 4,2, "Muy bueno! Mi mascota esta feliz", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 7,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 8,3, "Super práctico", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 9,2, "Muy recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 10,4, "Muy bueno! Mi mascota esta feliz", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 4,2, "Muy bueno! Mi mascota esta feliz", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 7,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 8,3, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 9,2, "Muy bueno! Mi mascota esta feliz", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 10,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 10,4, "Recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 9,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 8,3, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 7,2, "Muy bueno! Mi mascota esta feliz", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 4,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,2, "Muy bueno! Mi mascota esta feliz", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 4,2, "Muy bueno! Mi mascota esta feliz", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 7,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 8,3, "Super práctico", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 9,4, "Muy recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 10,4, "Muy bueno! Mi mascota esta feliz", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 7,4, "Muy bueno! Mi mascota esta feliz", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 4,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,2, "Muy bueno! Mi mascota esta feliz", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Recomendable", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,4, "Lo use y lo recomiendo!", "2021-04-05", DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!", "2020-11-23", DEFAULT, DEFAULT);

SELECT * FROM comentarios;
