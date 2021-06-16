const productos = require('../productos/productos.js');
const db = require('../database/models');
const Op = db.Sequelize.Op;

module.exports = {

    
    index: (req,res) => {
       
        let filtro = {
            where: [
                { fecha_creacion: {[Op.gte] : 2020}}
            ],
            limit: 4
          }
       
        db.Producto.findAll(filtro).then(resultado => {
        res.render('index', {producto: resultado});
        });
        
        let filtro2 = {
            where: [
                { fecha_creacion: {[Op.gte] : 2021}}
            ],
            limit: 4
          }
          db.Producto.findAll(filtro2).then(resultados => {
            res.render('index', {producto2: resultados});
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
