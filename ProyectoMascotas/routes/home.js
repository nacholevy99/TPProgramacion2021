let express = require('express');
let router = express.Router();

let controller = require('../controllers/controladores');

router.get('/', controller.index);

router.get('/home', controller.index);

router.get('/detalle', controller.index);


module.exports = router;