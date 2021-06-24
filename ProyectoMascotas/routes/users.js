let express = require('express');
let router = express.Router();

let userController = require('../controllers/userController');

const multer = require("multer");
const path = require("path");


const storage = multer.diskStorage({
    destination: (req, file, cb) =>{
        
        cb(null, path.join(__dirname, '../public/images/users/'))
    },
    filename: (req, file, cb) =>{
        let nombre = file.fieldname + "-" + Date.now() + path.extname(file.originalname);
        cb(null, nombre)
    },

});

const upload = multer({
    storage: storage
});


router.get('/register', userController.register);
//localhost:3000/register

router.post('/register', upload.single("perfil"), userController.registerpost);
//localhost:3000/register

router.get('/login', userController.login);
//localhost:3000/login

router.post('/login', userController.loginValidate);
//localhost:3000/login

router.get('/profile/:id', userController.profile)
//localhost:3000/profile

router.get('/profile-edit/:id', userController.edit)

router.post('/logout', userController.logout);

router.post('/profile-edit', userController.update)



module.exports = router;