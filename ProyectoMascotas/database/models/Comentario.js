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
        

    }, {
       tableName: "comentarios",
       timestamps: false
   });
   
       return comentario;
    }
