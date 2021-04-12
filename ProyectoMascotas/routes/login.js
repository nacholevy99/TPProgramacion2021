var express = require('express');
const loginController = require('../controllers/loginController');
var router = express.Router();

router.get('/login', loginController.login);

module.exports = router;