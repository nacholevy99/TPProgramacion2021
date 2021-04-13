let express = require('express')
let router = express.Router();


router.get('/register', function(req, res, next) {
    res.send('REGISTRO');
  });

  
module.exports = router;
