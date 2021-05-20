module.exports = (sequelize, dataTypes) => {

    const comentario = sequelize.define('Comentario', {
       id: {
           autoIncrement: true,
           primaryKey: true,
           type: dataTypes.INTEGER
        },
       
        

    }, {
       tableName: "comentarios",
       timestamps: false
   });
   
       return comentario;
    }
