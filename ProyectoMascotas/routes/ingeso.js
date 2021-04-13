let express = require('express')
let router = express.Router();

router.get('/register', function(req, res, next) {
    res.render('REGISTRO');
  });


module.exports = router;
