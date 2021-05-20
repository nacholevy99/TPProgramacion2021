module.exports = (sequelize, dataTypes) => {

     const ususario = sequelize.define('Usuario', {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        mail: {
            type: dataTypes.STRING
        },
        contraseña: {
            type: dataTypes.STRING
        },
        fecha: {
            type: dataTypes.DATE
        },
        edad : {
            type: dataTypes.DECIMAL
        },

    }, {
        tableName: "usuarios",
        timestamps: false
    });
    
        return ususario;
     }

