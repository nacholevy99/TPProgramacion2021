let express = require('express');
let router = express.Router();

let homeController = require('../controllers/homeController');

const multer = require("multer");
const path = require("path");


const storage = multer.diskStorage({
    destination: (req, file, cb) =>{
        let rutaImagen = "../public/images/products";
        cb(null, rutaImagen)
    },
    filename: (req, file, cb) =>{
        let nombre = file.fieldname + "-" + Date.now() + path.extname(file.originalname);
        cb(null, nombre)
    },

});

const upload = multer({
    storage: storage
});

router.get('/', homeController.index);
//localhost:3000

router.get('/productos/:id', homeController.productos);
//localhost:3000/productos

router.get('/product-add', homeController.add);
//localhost:3000/add

router.get('/search-results', homeController.results)
//localhost:3000/search-results

router.get('/modificar/:id', homeController.modificar);
//localhost:3000/modificar

router.post('/modificar', upload.single("archivo"), homeController.modificar2);

router.post('/borrar', homeController.borrar);

router.post('/productos/:id', homeController.crear);

module.exports = router;