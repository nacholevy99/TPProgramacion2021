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
createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updatedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (usuarios_id) REFERENCES usuarios (id),
FOREIGN KEY (productos_id) REFERENCES productos (id)
);


INSERT INTO usuarios 
VALUES (DEFAULT, "Juan Lopez", "juanlopez@gmail.com", "juanlopez1223", "1992-06-17", 27,"juan-lopez.jpeg", DEFAULT, DEFAULT);

INSERT INTO usuarios
VALUES (DEFAULT, "Martina Vanderusten", "mvanderusten@udesa.edu.ar","mvander1201","1997-01-12",24,"martu-vanderusten.JPG", DEFAULT, DEFAULT);

INSERT INTO usuarios
VALUES (DEFAULT, "Santiago Lemoine", "slemoine@udesa.edu.ar","slemo","1999-09-05",21,"santi-lemoine.png", DEFAULT, DEFAULT);

INSERT INTO usuarios
VALUES (DEFAULT, "Ignacio Levy", "ilevy@udesa.edu.ar","ilevy","1997-07-06",22,"nacho-levy.jpg", DEFAULT, DEFAULT);

INSERT INTO usuarios
VALUES (DEFAULT, "Francisco Finardi", "fjfinardi@udesa.edu.ar","0706","1992-06-07",27,"fran-finardi.JPG", DEFAULT, DEFAULT);

INSERT INTO usuarios
VALUES (DEFAULT, "Maria Undem", "mundem@udesa.edu.ar","2904","1997-04-29",27,"maria-undem.jpeg", DEFAULT, DEFAULT);
SELECT * FROM usuarios;

INSERT INTO productos
VALUES (DEFAULT, "producto1.webp", "Cuchas personalizadas",
"* Diseñada con el tamaño ideal para razas medianas y grandes.
* Piso elevado del suelo para aislar y mantener seco al perro.
* Material resistente a la humedad, fácil de limpiar.
* Para uso en interiores y exteriores, con protección UV.
* El diseño del techo evita que la lluvia moje el interior", 1, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "producto3.jpg", "Collar Táctico Militar", "Material duradero: este collar de perro resistente está hecho de material de nailon 1000D de alta calidad y duradero con costuras limpias y forro acolchado suave para evitar rozaduras para la piel y el cabello de su perro con un ajuste cómodo.", 2, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "producto4.webp", "Barra Nutritiva",
"- Barra nutritiva a base de harina de soja, maíz, trigo y minerales orgánicos.
- Suplemento nutricional complementario al alimento principal.
- Contenido 70gr por barra.
- Packs de 20 unidades.
- Directo de fábrica.", 5, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "producto2.jpg", "Comedor Bebedero",  
"Comedero bebedero para perros
- Hecho en madera Kiri, muy liviana y resistente
- Resistente al agua
- Platos removibles", 3, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "producto5.webp", "Comedero Automático", 
"Quién alimenta a tus perro o gato cuando no estás o si te olvidas? Este aparato soluciona tu problema y
alimenta a las mascotas diariamente y a la misma hora.
Desde ahora, cuando tengas que salir fuera de casa por el día, o por varios días y no puedas llevar a tu mascota, no tendrás que preocuparte por “quien la alimentará”; con los alimentadores dispondrá de comida de forma programada y automática.", 4, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "producto6.webp", "Pelota para alimento dosificadora",
"Pelota dosificadora de alimentos para perros.
Color celeste
Mide 10 cm de diámetro",3, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "producto7.webp", "Pretal Arnés con Correa",
"Contiene banda reflectiva que ayuda a que tu mascota sea mas visible en los paseos nocturnos
Ajustable
Tela acolchada y perforada para la comodidad de su mascota
Incluye correa de 15mm x 115cm de largo.
100% lavable", 6, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "producto8.webp", "Colchón Cama Perro Grande", 
"Ideal para perros de tamaño grande.
Se recomienda para las siguientes razas: Dálmata, Golden Retriever, Labrador, Huskey Siberiano, Weimaraner, Pointer, Rottweiler, Pastor alemán, Foxhound, Braco italiano, Pastor belga, Braco alemán, Boyero de Berna, Akita japonés, Mastín napolitano.", 4, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "producto9.webp", "Colchón Liso Antidesgarro", 
 "CARACTERÍSTICAS:
RELLENO: Gomaespuma en copos de alta densidad
FUNDA INTERNA: Funda interna de friselina que contiene el relleno
TELA: Cordura lisa
La tela de cordura es un tejido de una fibra sintética de alto rendimiento que es resistente a la abrasión, al rasgado o desgarro, a la tracción y al frisado o pilling (formación de pequeños nudos o bolitas) con una gran durabilidad y resistencia a cualquier tipo de climas.",5, DEFAULT, DEFAULT);
INSERT INTO productos
VALUES (DEFAULT, "producto10.webp", "Comedor Perros Acero Inox", 
"COMEDERO DE ACERO INOXIDABLE CON BASE ANTIDESLIZANTE
* Su base de goma evita el deslizamiento y los ruidos molestos.
* Fácil de limpiar lo que lo hace muy higiénico", 2, DEFAULT, DEFAULT);

SELECT * FROM productos;


INSERT INTO comentarios
VALUES (DEFAULT, 1,2, "Recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 1,1, "Lo recomiendo! Muy práctico",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 1,3, "Estamos muy contentos!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Muy bueno! Mi mascota esta feliz",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 1,5, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 1,6, "Recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,1, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,2, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,3, "Muy bueno! Mi mascota esta feliz",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,4, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,5, "Recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,6, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,1, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,2, "Muy bueno! Mi mascota esta feliz",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,4, "Recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,5, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,6, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 4,1, "Muy bueno! Mi mascota esta feliz",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 4,2, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 4,3, "Recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 4,4, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 4,5, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 4,6, "Muy bueno! Mi mascota esta feliz",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 5,1, "Recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 5,2, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 5,3, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Super práctico",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 5,5, "Muy recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 5,6, "Muy bueno! Mi mascota esta feliz",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 6,1, "Recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 6,2, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 6,3, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Muy bueno! Mi mascota esta feliz",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 6,5, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 6,6, "Recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 7,1, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 7,2, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 7,3, "Muy bueno! Mi mascota esta feliz",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 7,4, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 7,5, "Recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 8,2, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 8,3, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 8,4, "Muy bueno! Mi mascota esta feliz",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 8,6, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 9,1, "Recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 9,2, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 9,3, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 9,4, "Muy bueno! Mi mascota esta feliz",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 9,5, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 9,6, "Recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 10,1, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 10,2, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 10,3, "Muy bueno! Mi mascota esta feliz",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 10,4, "Recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 10,5, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 10,6, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 8,3, "Super práctico",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 9,4, "Muy recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 10,4, "Muy bueno! Mi mascota esta feliz",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 7,4, "Muy bueno! Mi mascota esta feliz",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 6,4, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 5,4, "Recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 4,4, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,3, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,2, "Muy bueno! Mi mascota esta feliz",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 1,4, "Recomendable",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 2,4, "Lo use y lo recomiendo!",  DEFAULT, DEFAULT);
INSERT INTO comentarios
VALUES (DEFAULT, 3,6, "Mi mascota esta feliz!!", DEFAULT, DEFAULT);

SELECT * FROM comentarios;
