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
       
        db.Producto.findAll(filtro).then(resultado => {
            db.Producto.findAll(filtro2).then(resultado2 => {
        res.render('index', {producto: resultado, producto2: resultado2});
        });
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
            include: [{
                association: 'usuario',
                include: {
                    association: 'comentarios'
                }
            }, {
                association: 'comentarios'
            }],
        }
        let filtro2 = {
            where: {
                descripcion: {[Op.like]:'%' + req.query.search + '%'},
            },
            include: [{
                association: 'usuario',
                include: {
                    association: 'comentarios'
                }
            }, {
                association: 'comentarios'
            }],
        }
        
            db.Producto.findAll(filtro).then(resultado => {
                db.Producto.findAll(filtro2).then(resultado2 => {
                res.render('search-results', { buscar: resultado, buscar2: resultado2});
            });
        
    
        });
     }

    
 }
