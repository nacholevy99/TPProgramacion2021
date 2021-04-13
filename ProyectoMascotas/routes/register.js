let express = require('express')
let router = express.Router();
let registerController = require('../controllers/registerController');

router.get('/', function(req,res,next) {
  res.render('partials/register')});

module.exports = router;



