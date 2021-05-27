const productos = require('../productos/productos.js');
const db = require('../database/models');
const Op = db.Sequelize.Op;

module.exports = {

    
    index: (req,res) => {
       
          let filtro = {
              limit: 4
          }
       
        db.Producto.findAll(filtro).then(resultado => {
        res.render('index', {productos: resultado});
        });
    },

    productos: (req,res) => { 

        let idproducto = req.params.id;     

        db.Producto.findByPk(idproducto).then(resultado => {
            res.render('productos', { lista: resultado});
        });
     },

    add: (req,res) => { 
        res.render('product-add', {productos: productos.list})},   

    results: (req,res) => { 
        const filtro = {
            where: {
                nombre_producto: {[Op.like]:'%' + req.query.search + '%'}
            }
        }
        db.Producto.findAll(filtro).then(resultado => {
            res.render('search-results', { buscar: resultado});
        });
    },

    
 }
