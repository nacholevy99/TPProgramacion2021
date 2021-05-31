
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
    }, {
       tableName: "productos",
       timestamps: false
   });

   // Clase 31/5 (ver despues)
   Producto.associate = (db) => {
            Producto.belongsTo(db.Usuario, {
                as: ''
            })
   };
    
   
       return producto;
    }
