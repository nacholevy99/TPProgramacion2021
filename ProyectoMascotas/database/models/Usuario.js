module.exports = (sequelize, dataTypes) => {

     const usuario = sequelize.define('Usuario', {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        usuario: {
            type: dataTypes.STRING
        },
        mail: {
            type: dataTypes.STRING
        },
        contraseña: {
            type: dataTypes.STRING
        },
        fecha_nacimiento: {
            type: dataTypes.DATE
        },
        edad : {
            type: dataTypes.DECIMAL
        },

    }, {
        tableName: "usuarios",
        timestamps: false
    });


        return usuario;
     }

