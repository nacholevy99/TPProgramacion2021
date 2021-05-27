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
    }, {
       tableName: "productos",
       timestamps: false
   });
   
       return producto;
    }
