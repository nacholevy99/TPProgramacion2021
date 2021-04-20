const homeController = {

    
    index: (req,res) => {
        
        let resultado = {
        nombre: 'pitbul',
        imagen: '/stylesheets/imagenes/products/pitbull-1.jpg',
        comentario: 'El American Pit Bull Terrier es una raza canina de Estados Unidos que se originó con la llegada de los inmigrantes ingleses que llevaban el Staffordshire bull terrier,'
        };
        
        res.render('index', resultado)},
    

    productos: (req,res) => 
        res.render('productos'),


    add: (req,res) => 
        res.render('add'),    

    results: (req,res)=> 
    res.render('search-results')   
}

module.exports = homeController;