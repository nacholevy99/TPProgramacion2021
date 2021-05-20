const productos = require('../productos/productos.js');
const db = require('../database/models');
const Op = db.Sequelize.Op;

module.exports = {

    
    index: (req,res) => {
       
          let filtro = {
              limit: 4
          }
       
        db.productos.findAll(filtro).then(resultado => {
        res.render('index', {productos: resultado});
        });
    },

    productos: (req,res) => { 
        db.productos.findAll().then(resultado => {
            res.render('productos', { lista: resultado});
        });
     },

    add: (req,res) => { 
        res.render('product-add', {productos: productos.list})},   

    results: (req,res) => { 
        const filtro = {
            where: {
                title: {[Op.like]:'%' + req.query.search + '%'}
            }
        }
        db.productos.findAll(filtro).then(resultado => {
            res.render('search-results', { buscar: resultado});
        });
    },

    
 }
