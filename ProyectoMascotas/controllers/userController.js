const productos = require('../productos/productos.js');
const db = require('../database/models');
const Op = db.Sequelize.Op;
const bcrypt = require('bcryptjs')

module.exports ={
    
    login:(req,res) => {
        res.render('login', {title:"Login Page"})
    },

    register:(req,res) => {
        res.render('register', {title:"Register yourself"})
    },

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
    },

    registerpost:(req,res) => {
        let password = bcrypt.hashSync(req.body.password)
        db.Usuario.create({
            usuario: req.body.usuario,
            mail: req.body.email,
            contraseña: password,
            fecha_nacimiento: req.body.fecha_de_nacimiento,
        })
        .then(Usuario=>{
            res.redirect('/')

        })    
    },
    loginValidate: (req, res) => {
        // Filtramos el usuario a traves de un campo que sea UNICO en la base de datos
        const filtro = {
            where: {
                name: req.body.name
            }
        }
        // Buscamos un usuario unico
        db.Usuario.findOne(filtro).then(usuario => {
        // Comparamos la password ingresada en el login (req.body.pass)
        // con la que ingresada en el registro (usuario.pass)
        if(bcrypt.compareSync(req.body.pass, usuario.pass)){
                req.session.usuario = usuario.name;
        if(req.body.remember){
            res.cookie('userId', usuario.id, { maxAge: 1000 * 60 * 5 });
                }
            }
            res.redirect('/');
        });
    
    },

    logout: (req, res) => {
        // Borramos la sesion del servidor
        req.session.destroy();
        // Eliminamos la cookie del cliente
        res.clearCookie('userId');
        res.redirect('/');

}}
