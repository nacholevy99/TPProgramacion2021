let userController={
    login:(req,res) => {
        res.render('login', {title:"Login Page"})
    },
    register:(req,res) => {
        res.render('register', {title:"Register yourself"})
    },
}

module.exports = userController