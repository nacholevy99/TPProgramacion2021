const express = require('express');
const productos = require('../productos/productos')


const homeController = {

    
    index: (req,res) => {
        let listaproductos = productos.lista
        let respuesta = {lista : listaproductos}
        for (let index = 0; index < respuesta.lista; index++){
            console.log(respuesta.lista[index].describirse())
        }
        res.render('home', respuesta)},
        
    
    detalle: (req,res) => 
        res.render('detalle'),


    add: (req,res) => 
        res.render('add')    
}

module.exports = homeController;