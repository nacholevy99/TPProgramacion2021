const productos = require('../productos/productos.js');
const db = require('../database/models');
const Op = db.Sequelize.Op;

module.exports = {

    
    index: (req,res) => {

        res.render('index', {productos: productos.list})},

    productos: (req,res) => { 
        db.Producto.findByPk(req.params.id).then(resultado => {
            res.render('productos', { lista: resultado});
        });
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
