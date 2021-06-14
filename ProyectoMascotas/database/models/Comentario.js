module.exports = (sequelize, dataTypes) => {

    const comentario = sequelize.define('Comentario', {
       id: {
           autoIncrement: true,
           primaryKey: true,
           type: dataTypes.INTEGER
        },
        comentario: {
            type: dataTypes.STRING(1000)
        },
        fecha_creacion: {
            type: dataTypes.DATE
        },
        usuarios_id: {
            type: dataTypes.INTEGER
        },
        productos_id: {
            type: dataTypes.INTEGER
        },

    }, {
       tableName: "comentarios",
       timestamps: false
   });

   comentario.associate = (db) => {
    comentario.belongsTo(db.Usuario, {
        as: 'usuario',
        foreignKey: 'usuarios_id'
    });
    comentario.belongsTo(db.Producto, {
        as: 'producto',
        foreignKey: 'productos_id'
    });

};
   
       return comentario;
    }
