let express = require('express');
let router = express.Router();

let homeController = require('../controllers/homeController');

router.get('/', homeController.index);
//localhost:3000

router.get('/productos/:id', homeController.productos);
//localhost:3000/productos

router.get('/product-add', homeController.add);
//localhost:3000/add

router.get('/search-results', homeController.results)
//localhost:3000/search-results

module.exports = router;