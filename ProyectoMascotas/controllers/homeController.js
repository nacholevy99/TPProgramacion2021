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
            include: [{
                association: 'comentarios',
                include: {
                    association: 'usuario'
                }
            }, {
                association: 'usuario'
            }],
        } 
        let filtro2 = {
            include: [{
                association: 'producto',
                include: {
                    association: 'usuario'
                }
            }, {
                association: 'usuario'
            }],
            
        order: [
            ['fecha_creacion', 'DESC'],
        ],
        limit: 7
       } 


        db.Producto.findByPk(req.params.id, filtro).then(resultado => {
            db.Comentario.findAll(filtro2).then(resultado2 => {
            res.render('productos', { lista: resultado, lista2: resultado2});
        });
    });

    },

    modificar: (req,res) => { 
        db.Producto.findByPk(req.params.id).then(resultado => {
            res.render('modificar', { lista: resultado});
        });
    },

    modificar2:  (req,res) => { 
        filtro = {
            where: {
                id: req.body.id,
            },
            url: req.body.imagen,
            nombre_producto: req.body.nombre,
            descripcion: req.body.descripcion,

        },

        db.Producto.update(filtro).then(() => {
        res.redirect('/producto/id');
    });  
    },

    borrar: (req, res) => {
        db.Producto.destroy({
            where: {
                id: req.body.id
            }
        }).then(() => {
            res.redirect('/');
        });
    },

    crear: (req, res) => {
        db.Comentario.create({
            comentario: req.body.comentario,
            id_producto: req.params.id,
            id_usuario: req.session.idUsuario

        }).then(comentarioCreado => {
            res.redirect('/productos/' + comentarioCreado.id);
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
