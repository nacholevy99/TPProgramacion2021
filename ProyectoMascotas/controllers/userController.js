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
        res.render('profile', {productos:productos.list})
    },

    edit:(req,res) => {
        res.render('profile-edit', {title: "Editar Perfil"})
    }
};
