const productos = require('../productos/productos.js');
const db = require('../database/models');
const Op = db.Sequelize.Op;

module.exports ={
    
    login:(req,res) => {
        res.render('login', {title:"Login Page"})
    },
    
    register:(req,res) => {
        res.render('register', {title:"Register yourself"})
    },

// chequear esto
    profile:(req,res) => {
        let filtro = {
            limit: 8
        }
     
      db.Producto.findAll(filtro).then(resultado => {
      res.render('profile', {productos: resultado});
      });
    },

    edit:(req,res) => {
        res.render('profile-edit', {title: "Editar Perfil"})
    }
};
