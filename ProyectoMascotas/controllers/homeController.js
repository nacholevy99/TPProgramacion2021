const productos = require('../productos/productos.js');
const db = require('../database/models');
const Op = db.Sequelize.Op;

module.exports = {


    index: (req, res) => {

        let filtro = {
            order: [
                ['fecha_creacion', 'DESC'],
            ],
            include: [{
                association: 'usuario'
            }],
            limit: 4
        }
        let filtro2 = {
            order: [
                ['fecha_creacion', 'ASC'],
            ],
            include: [{
                association: 'usuario'
            }],
            limit: 4
        }

        db.Producto.findAll(filtro).then(resultado => {

            db.Producto.findAll(filtro2).then(resultado2 => {
                res.render('index', {
                    producto2: resultado2,
                    producto: resultado
                });
            });
        });




    },

    productos: (req, res) => {

        let idproducto = req.params.id;

        db.Producto.findByPk(idproducto).then(resultado => {
            res.render('productos', {
                lista: resultado
            });
        });
    },

    add: (req, res) => {
        res.render('product-add', {
            productos: productos.list
        })
    },


    results: (req, res) => {
        const filtro = {
            where: {
                nombre_producto: {
                    [Op.like]: '%' + req.query.search + '%'
                }
            }
        }


        db.Producto.findAll(filtro).then(resultado => {
            res.render('search-results', {
                buscar: resultado
            });
        });


    },


}