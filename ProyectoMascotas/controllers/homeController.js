const productos = require('../productos/productos.js');

const homeController = {

    
    index: (req,res) => {

        res.render('index', {productos: productos.list})},

    productos: (req,res) => { 
        let resultado = {
            nombre: 'Camitas Personalizadas',
            imagen: '/images/products/producto1.webp',
            descripcion: 'Casa para perro diseñada con el tamaño ideal para razas mediana y grandes,cuenta con un piso elevado del suelo para aislar y mantener seco al perro. A su vez, el material que posee es resistente a la humedad y fácil de limpiar.'
            
            };
        res.render('productos',resultado)
     },

    add: (req,res) => { 
        res.render('product-add', {productos: productos.list})},   

    results: (req,res) => { 
        let resultado = {
            nombre: 'Camitas Personalizadas',
            imagen: '/images/products/producto1.webp',
            descripcion: 'Camitas 80 x 60 cm REFORZADAS para mascotas.'
                
          };
        res.render('search-results',resultado)
    },
 }
module.exports = homeController;