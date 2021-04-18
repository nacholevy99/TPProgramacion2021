let express = require('express');
let router = express.Router();

let homeController = require('../controllers/homeController');

router.get('/', homeController.index);

router.get('/detalle', homeController.detalle);

router.get('/add', homeController.add);


//router.get('/home', controller.index);

//router.get('/detalle', controller.index);


module.exports = router;