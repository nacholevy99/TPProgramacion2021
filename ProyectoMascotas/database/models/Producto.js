
module.exports = (sequelize, dataTypes) => {

    const producto = sequelize.define('Producto', {
       id: {
           autoIncrement: true,
           primaryKey: true,
           type: dataTypes.INTEGER
        },
        url: {
            type: dataTypes.STRING(1000)
        },
        nombre_producto: {
            type: dataTypes.STRING
        },
        fecha_creacion: {
            type: dataTypes.DATE
        },
        descripcion: {
            type: dataTypes.STRING(1000)
        },
        usuario_id: {
            type: dataTypes.INTEGER
        },
    }, {
       tableName: "productos",
       timestamps: false
   });

   // Clase 31/5 (re chequear)
 //  Producto.associate = (db) => {
 //           Producto.belongsTo(db.Usuario, {
 //               as: '', 
 //               foreginKey: ''
 //           });
 //           
 //     
//
 //  };
 //   
 //  
 //      return producto;
    }
