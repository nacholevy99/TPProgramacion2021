const productos = require('../productos/productos.js');
const db = require('../database/models');
const Op = db.Sequelize.Op;

module.exports = {

    
    index: (req,res) => {
       
        let filtro = {
            order: [
                ['fecha_creacion', 'DESC'],
            ],
            include: [{
                association: 'usuario',
                include: {
                    association: 'comentarios'
                }
            }, {
                association: 'comentarios'
            }],
            limit: 4
        }
       
        db.Producto.findAll(filtro).then(resultado => {
        res.render('index', {producto: resultado});
        });
        
       
        let filtro2 = {
            order: [
                ['fecha_creacion', 'ASC'],
            ],
            include: [{
                association: 'usuario',
                include: {
                    association: 'comentarios'
                }
            }, {
                association: 'comentarios'
            }],
            limit: 4
        }
       
        db.Producto.findAll(filtro2).then(resultado => {
        res.render('index', {producto2: resultado});
        });
        
    },
    

    productos: (req,res) => { 
         let filtro = {
             include:[
                 {association:'comentarios', 
                 include: [{ 
                    association: 'usuario'}]
         }],
        } 

        db.Producto.findByPk(req.params.id, filtro).then(resultado => {
            res.render('productos', { lista: resultado});
        });


     },


    add: (req,res) => { 
        res.render('product-add', {productos: productos.list})},   


    results: (req,res) => { 
        const filtro = {
            where: {
                nombre_producto: {[Op.like]:'%' + req.query.search + '%'},
            },
            include: [
                {association: 'usuario'}
            ],
        }
        
            db.Producto.findAll(filtro).then(resultado => {
                res.render('search-results', { buscar: resultado});
            });
        
    
    },

    
 }
