let express = require('express');
let router = express.Router();

let userController = require('../controllers/userController');
let homeController = require('../controllers/homeController');

router.get('/', homeController.index);
//localhost:3000

router.get('/detalle', homeController.detalle);
//localhost:3000/detalle

router.get('/add', homeController.add);
//localhost:3000/add

router.get('/register', userController.register);
//localhost:3000/register

router.get('/login', userController.login);
//localhost:3000/login

router.get('/profile', userController.profile)
//localhost:3000/profile



module.exports = router;