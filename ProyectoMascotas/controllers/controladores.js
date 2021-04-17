const express = require('express');
const productos = require('../productos/productos')
console.log(productos)
const controller = {
    
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

module.exports = controller;