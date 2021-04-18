const express = require('express');
const productos = require('../productos/productos')


const homeController = {
>>>>>>> b2c0492caf4a39cfb3a1d14d6a7da80052a4d37f:ProyectoMascotas/controllers/homeController.js
    
    index: (req,res) => {
        res.render('home', {productos: productos.list})},
        
    name: (req,res) => res.render('home', {productos: productos.porName(req.params.name)}),
    imagen: (req,res) => res.render('home', {productos: productos.porImagen(req.params.imagen)}),
    comentario: (req,res) => res.render('home', {productos: productos.porComentario(req.params.comentario)}),
    descripcioncorta: (req,res) => res.render('home', {productos: productos.porDescripcioncorta(req.params.descripcioncorta)}),
    

    detalle: (req,res) => 
        res.render('detalle'),


    add: (req,res) => 
        res.render('add')    
}

module.exports = homeController;