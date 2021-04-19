let express = require('express');
let router = express.Router();

let homeController = require('../controllers/homeController');

router.get('/', homeController.index);
//localhost:3000

router.get('/detalle', homeController.detalle);
//localhost:3000/detalle

router.get('/add', homeController.add);
//localhost:3000/add


module.exports = router;