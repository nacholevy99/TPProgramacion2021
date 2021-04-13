let express = require('express')
let router = express.Router();
let loginController = require('../controllers/loginController');

router.get('/', function(req,res,next) {
    res.render('login');

});

module.exports = router;