let userController={
    login:(req,res) => {
        res.render('login', {title:"Login Page"})
    },
    register:(req,res) => {
        res.render('register', {title:"Register yourself"})
    },

    //chequear esto
    save: async function(req, res){
        let errores = [];
        if (req.body.nombre == "") {
            errores.push("Pone un nombre")
    
        } 
        if (req.body.email == ""){
            errores.push("Pone un mail")
    
        } 
        if (errores.length == 0) {
    
            let usuario  = {
                    nombre: req.body.nombre,
                    email: req.body.email,
                    password: bcrypt.hashSync(req.body.password, 8),
                    fecha_de_nacimiento: req.body.fecha_de_nacimiento,
                }
        
}},
// chequear esto
    profile:function(req,res){
        res.render('profile', {title: "Mi perfil"})
           
        
        }

};
module.exports = userController;