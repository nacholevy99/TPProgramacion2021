const express = require('express');
const productos = require('../productos/productos')


const homeController = {

    
    index: (req,res) => {
        
        let resultado = {
        nombre: 'pitbul',
        imagen: '/stylesheets/imagenes/products/pitbull-1.jpg',
        comentario: 'El American Pit Bull Terrier es una raza canina de Estados Unidos que se originó con la llegada de los inmigrantes ingleses que llevaban el Staffordshire bull terrier,'
        };
        
        res.render('home', resultado)},
    

    detalle: (req,res) => 
        res.render('detalle'),


    add: (req,res) => 
        res.render('add')    
}

module.exports = homeController;