'use strict';
module.exports = (sequelize, DataTypes) => {
  const hubungan_keluarga = sequelize.define('hubungan_keluarga', {
    stat_hbkel: DataTypes.STRING
  }, {});
  hubungan_keluarga.associate = function(models) {
    // associations can be defined here
  };
  return hubungan_keluarga;
};