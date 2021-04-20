let userController={
    login:(req,res) => {
        res.render('login', {title:"Login Page"})
    },
    register:(req,res) => {
        res.render('register', {title:"Register yourself"})
    },

// chequear esto
    profile:(req,res) => {
        res.render('profile', {title: "Mi perfil"})
    }

};
module.exports = userController;