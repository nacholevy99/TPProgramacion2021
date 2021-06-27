const productos = require('../productos/productos.js');
const db = require('../database/models');
const Op = db.Sequelize.Op;
const bcrypt = require('bcryptjs')

module.exports = {

    login: (req, res) => {
        if (req.session.usuario) {
            res.redirect("/")
        } else {
            res.render('login', {
                title: "Login Page",
                error: null
            })
        }

    },

    register: (req, res) => {
        res.render('register', {
            title: "Register yourself"
        })
    },

    profile: (req, res) => {
        db.Usuario.findByPk(req.params.id, {
            include: [{
                association: 'productos',
                include: {
                    association: 'comentarios'
                }
            }, {
                association: 'comentarios'
            }]
        }).then(usuario => {
            res.render('profile', {
                usuario: usuario
            });
        })


    },

    edit: (req, res) => {
        db.Usuario.findByPk(req.params.id).then(usuario => {
            res.render('profile-edit', {
                title: "Editar Perfil",
                usuario: usuario,
                error: null
            })

        })
    },
    update: (req, res) => {
        if (req.body.nombre && req.body.email) {
            if (req.body.fecha && req.body.password) {
                let password = bcrypt.hashSync(req.body.password)
                db.Usuario.update({
                        usuario: req.body.nombre,
                        mail: req.body.email,
                        contraseña: password,
                        fecha: req.body.fecha,
                    }, {
                        where: {
                            id: req.body.id
                        }
                    })
                    .then(Usuario => {
                        res.redirect('/users/profile/' + req.body.id)

                    })

            } else if (!req.body.fecha && req.body.password) {
                let password = bcrypt.hashSync(req.body.password)
                db.Usuario.update({
                        usuario: req.body.nombre,
                        mail: req.body.email,
                        contraseña: password,
                    }, {
                        where: {
                            id: req.body.id
                        }
                    })
                    .then(Usuario => {
                        res.redirect('/users/profile/' + req.body.id)

                    })
            } else if (req.body.fecha && !req.body.password) {
                db.Usuario.update({
                        usuario: req.body.nombre,
                        mail: req.body.email,
                        fecha: req.body.fecha,
                    }, {
                        where: {
                            id: req.body.id
                        }
                    })
                    .then(Usuario => {
                        res.redirect('/users/profile/' + req.body.id)

                    })
            } else {
                db.Usuario.update({
                        usuario: req.body.nombre,
                        mail: req.body.email,
                    }, {
                        where: {
                            id: req.body.id
                        }
                    })
                    .then(Usuario => {
                        res.redirect('/users/profile/' + req.body.id)

                    })
            }


        } else {
            res.render("profile-edit", {
                error: "Estos campos no pueden estar vacios"
            })
        }

    },

    registerpost: (req, res) => {
        let password = bcrypt.hashSync(req.body.password)
        if(req.file){
            db.Usuario.create({
                usuario: req.body.nombre,
                mail: req.body.email,
                contraseña: password,
                fecha: req.body.fecha_de_nacimiento,
                url: req.file.filename
            })
            .then(Usuario => {
                res.redirect('/')

            })
        }else{
            db.Usuario.create({
                usuario: req.body.nombre,
                mail: req.body.email,
                contraseña: password,
                fecha: req.body.fecha_de_nacimiento,
                url: "default.png"
            })
            .then(Usuario => {
                res.redirect('/')

            })
        }
       
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
            if (usuario && bcrypt.compareSync(req.body.password, usuario.contraseña)) {
                req.session.usuario = usuario;
                if (req.body.remember) {
                    res.cookie('userId', usuario.id, {
                        maxAge: 1000 * 60 * 5
                    });
                }
            } else {
                res.render("login", {
                    title: "Login Page",
                    error: "E-mail o contraseña incorrectos"
                })

            }
            res.redirect('/'); // Me tiene que llevar con el header logueado
        });

    },

    logout: (req, res) => {
        // Borramos la sesion del servidor
        req.session.destroy();
        // Eliminamos la cookie del cliente
        res.clearCookie('userId');
        res.redirect('/');

    }
}