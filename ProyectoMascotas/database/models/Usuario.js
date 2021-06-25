module.exports = (sequelize, dataTypes) => {

    const Usuario = sequelize.define('Usuario', {
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
        fecha: {
            type: dataTypes.DATE
        },
        edad: {
            type: dataTypes.DECIMAL
        },
        url: {
            type: dataTypes.STRING
        },
        createdAt: {
            type: dataTypes.DATE
        },
        updatedAt: {
            type: dataTypes.DATE
        },

    }, {
        tableName: "usuarios",
    });

    Usuario.associate = (models) => {
        Usuario.hasMany(models.Producto, {
            as: "productos",
            foreignKey: "usuarios_id"
        })
        Usuario.hasMany(models.Comentario, {
            as: "comentarios",
            foreignKey: "usuarios_id"
        })
    }

    return Usuario;
}