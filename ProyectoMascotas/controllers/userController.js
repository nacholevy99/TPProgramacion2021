const productos = require('../productos/productos.js');
const db = require('../database/models');
const Op = db.Sequelize.Op;
const bcrypt = require('bcryptjs')

module.exports ={
    
    login:(req,res) => {
        if(req.session.usuario) {
            res.redirect("/")
        } else {
            res.render('login', {title:"Login Page", error:null})
        }
       
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
            usuario: req.body.nombre,
            mail: req.body.email,
            contraseña: password,
            fecha: req.body.fecha_de_nacimiento,
        })
        .then(Usuario=>{
            res.redirect('/')

        })    
    },
    loginValidate: (req, res) => {
        // Filtramos el usuario a traves de un campo que sea UNICO en la base de datos
        const filtro = {
            where: {
                mail: req.body.email,
            }
        }
        // Buscamos un usuario unico
        db.Usuario.findOne(filtro).then(usuario => {
        // Comparamos la password ingresada en el login (req.body.pass)
        // con la que ingresada en el registro (usuario.pass)
        if(usuario && bcrypt.compareSync(req.body.password, usuario.contraseña)) {
                req.session.usuario = usuario;
        if(req.body.remember){
            res.cookie('userId', usuario.id, { maxAge: 1000 * 60 * 5 });
                }
            } else { res.render ("login", {title:"Login Page", error:"El mail o la contraseña son incorrectos"})

            }
            res.redirect('/'); // Me tiene que llevar con el header logeado
        });
    
    },

    logout: (req, res) => {
        // Borramos la sesion del servidor
        req.session.destroy();
        // Eliminamos la cookie del cliente
        res.clearCookie('userId');
        res.redirect('/');

}}
