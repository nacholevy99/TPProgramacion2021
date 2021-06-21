let express = require('express');
let router = express.Router();

let userController = require('../controllers/userController');


router.get('/register', userController.register);
//localhost:3000/register

router.post('/register', userController.registerpost);
//localhost:3000/register

router.get('/login', userController.login);
//localhost:3000/login

router.post('/login', userController.loginValidate);
//localhost:3000/login

router.get('/profile/:id', userController.profile)
//localhost:3000/profile

router.get('/profile-edit', userController.edit)

router.post('/logout', userController.logout);



module.exports = router;