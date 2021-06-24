
module.exports = (sequelize, dataTypes) => {

    const Producto = sequelize.define('Producto', {
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
        
        descripcion: {
            type: dataTypes.STRING(1000)
        },
        usuarios_id: {
            type: dataTypes.INTEGER
        },
        createdAt:{
            type:dataTypes.DATE
        },
        updatedAt:{
            type:dataTypes.DATE
        },
    }, {
       tableName: "productos",
   });

   Producto.associate = (db) => {
    Producto.belongsTo(db.Usuario, {
        as: 'usuario',
        foreignKey: 'usuarios_id'
    });
    Producto.hasMany(db.Comentario, {
        as:"comentarios",
        foreignKey:"productos_id"
    })

};

      return Producto;
    }
