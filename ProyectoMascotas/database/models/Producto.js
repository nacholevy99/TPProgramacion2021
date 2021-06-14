
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
        usuarios_id: {
            type: dataTypes.INTEGER
        },
    }, {
       tableName: "productos",
       timestamps: false
   });

   producto.associate = (db) => {
    producto.belongsTo(db.Usuario, {
        as: 'usuario',
        foreignKey: 'usuarios_id'
    });

};

      return producto;
    }
