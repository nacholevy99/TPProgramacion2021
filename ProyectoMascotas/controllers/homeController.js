const productos = require('../productos/productos.js');

const homeController = {

    
    index: (req,res) => {
<<<<<<< HEAD
        res.render('index', {productos: productos.list})},
=======
        
        let resultado = {
        nombre: 'Pitbull',
        imagen: '/images/products/pitbull-1.jpg',
        comentario: 'El American Pit Bull Terrier es una raza canina de Estados Unidos que se originó con la llegada de los inmigrantes ingleses que llevaban el Staffordshire bull terrier,'
        };
        
        res.render('index', resultado)},
>>>>>>> 27bdf09a949ff3cc93ec76e96d803f378b0d91c8
    

    productos: (req,res) => { 
        let resultado = {
            nombre: 'Pitbul',
            imagen: '/stylesheets/imagenes/products/pitbull-1.jpg',
            descripcion: 'El American Pit Bull Terrier es una raza canina de Estados Unidos que se originó con la llegada de los inmigrantes ingleses que llevaban el Staffordshire bull terrier. El APBT (American Pit Bull Terrier) es un perro de tamaño medio, los machos suelen pesar de 16 a 27 kg y las hembras de 13 a 25 kg. Son de constitución atlética y su cría se centra principalmente en el carácter y rendimiento del perro funcional.'
            
            };
        res.render('productos',resultado)
     },

    add: (req,res) => { 
        res.render('product-add', {productos: productos.list})},   

    results: (req,res) => { 
        let resultado = {
            nombre: 'Pitbul',
            imagen: '/stylesheets/imagenes/products/pitbull-1.jpg',
            descripcion: 'El American Pit Bull Terrier es una raza canina de Estados Unidos que se originó con la llegada de los inmigrantes ingleses que llevaban el Staffordshire bull terrier. El APBT (American Pit Bull Terrier) es un perro de tamaño medio, los machos suelen pesar de 16 a 27 kg y las hembras de 13 a 25 kg. Son de constitución atlética y su cría se centra principalmente en el carácter y rendimiento del perro funcional.'
                
          };
        res.render('search-results',resultado)
    },
 }
module.exports = homeController;