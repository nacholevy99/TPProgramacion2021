module.exports = (sequelize, dataTypes) => {

    const Comentario = sequelize.define('Comentario', {
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
        createdAt:{
            type:dataTypes.DATE
        },
        updatedAt:{
            type:dataTypes.DATE
        },

    }, {
       tableName: "comentarios",
   });

   Comentario.associate = (db) => {
    Comentario.belongsTo(db.Usuario, {
        as: 'usuario',
        foreignKey: 'usuarios_id'
    });
    Comentario.belongsTo(db.Producto, {
        as: 'producto',
        foreignKey: 'productos_id'
    });

};
   
       return Comentario;
    }
