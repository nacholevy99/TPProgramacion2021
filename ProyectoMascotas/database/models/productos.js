module.exports = (sequelize, dataTypes) => {

    const producto = sequelize.define('productos', {
       id: {
           autoIncrement: true,
           primaryKey: true,
           type: dataTypes.INTEGER
        },
        url: {
            type: dataTypes.STRING(1000)
        },
        nombre: {
            type: dataTypes.STRING
        },
        fecha: {
            type: dataTypes.DATE
        },
        usuarios: {
            type: dataTypes.STRING
        },
    }, {
       tableName: "productos",
       timestamps: false
   });
   
       return producto;
    }
