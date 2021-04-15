const express = require('express');
const productos = require('../productos/productos')


const controller = {
    
    index: (req,res) => res.render('home', {productos: productos.list}),
    name: (req,res) => res.render('home', {productos: productos.porName(req.params.name)}),
    imagen: (req,res) => res.render('home', {productos: productos.porImagen(req.params.imagen)}),
    comentario: (req,res) => res.render('home', {productos: productos.porComentario(req.params.comentario)}),
    descripcioncorta: (req,res) => res.render('home', {productos: productos.porDescripcioncorta(req.params.imagen)})
    
}

module.exports = controller;