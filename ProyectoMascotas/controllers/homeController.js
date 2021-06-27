const productos = require('../productos/productos.js');
const db = require('../database/models');
const Op = db.Sequelize.Op;

module.exports = {


    index: (req, res) => {

        let filtro = {
            order: [
                ['createdAt', 'DESC'],
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
                ['createdAt', 'ASC'],
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
                res.render('index', {
                    producto: resultado,
                    producto2: resultado2
                });
            });
        });

    },


    productos: (req, res) => {
        let filtro = {
            include: [{
                association: 'comentarios',
                include: {
                    association: 'usuario'
                },

            }, {
                association: 'usuario'
            }],
            order: [
                [
                    ['comentarios', 'id', 'DESC']
                ],
            ],

        }


        db.Producto.findByPk(req.params.id, filtro).then(resultado => {
            res.render('productos', {
                lista: resultado
            });
        });


    },

    crear: (req, res) => {
        console.log(req.body)
        console.log(req.session)
        console.log(req.params)
        db.Comentario.create({

            comentario: req.body.comentario,
            productos_id: req.params.id,
            usuarios_id: req.session.usuario.id

        }).then(comentarioCreado => {
            console.log(comentarioCreado)
            res.redirect('/productos/' + req.params.id);
        });
    },

    modificar: (req, res) => {
        db.Producto.findByPk(req.params.id).then(usuario => {
            res.render('modificar', {
                usuario: usuario,
                error: null
            });
        });
    },

    modificar2: (req, res) => {

        db.Producto.update({

            nombre_producto: req.body.nombre,
            descripcion: req.body.descripcion,
            url: req.body.imagen,
        }, {
            where: {
                id: req.body.id
            },

        }).then(productoModificado => {
            res.redirect('/productos/' + req.body.id);
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




    add: (req, res) => {
        if (req.session.usuario) {
            res.render('product-add', {
                error: null
            })
        } else {
            res.redirect("/")
        }
    },

    results: (req, res) => {


        const filtro = {

            where: {
                [Op.or]: [{ 
                nombre_producto: {
                    [Op.like]: '%' + req.query.search + '%'
                },
                },
                { 
                descripcion: {
                    [Op.like]: '%' + req.query.search + '%'
                },
                }
            ]},
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
            if(resultado == "" || req.query.search == ""){ 
                console.log("no hay resultados");
                console.log("req.query.search");

                console.log(JSON.stringify(resultado));

                res.render('search-results', {
                    buscar: resultado,
                    error: "No existen resultados para tu búsqueda",
                });
                } else { 
                    console.log(JSON.stringify(resultado));
                    console.log("si hay resultados");

                    res.render('search-results', {
                        buscar: resultado,
                        error: null
                    });
                    }
        }) .catch(errorsearch => console.log (errorsearch));;
    },
    store: (req, res) => {
        if (!req.body.titulo || !req.body.descripcion || !req.file) {
            res.render("product-add", {
                error: "no puede haber campos vacios"
            })
        }
        db.Producto.create({
            url: req.file.filename,
            nombre_producto: req.body.titulo,
            descripcion: req.body.descripcion,
            usuarios_id: req.session.usuario.id
        }).then(resultado => {
            res.redirect("/")
        })
    }


}