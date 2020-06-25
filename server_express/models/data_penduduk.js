"use strict";
module.exports = (sequelize, DataTypes) => {
  const data_penduduk = sequelize.define(
    "data_penduduk",
    {
      no_kk: DataTypes.INTEGER,
      nik: DataTypes.INTEGER,
      nama_lengkap: DataTypes.STRING,
      id_hbkel: DataTypes.INTEGER,
      no_rt: DataTypes.INTEGER,
    },
    {}
  );
  data_penduduk.associate = function (models) {
    // associations can be defined here
    data_penduduk.belongsTo(models.hubungan_keluarga, {
      foreignKey: "id_hbkel",
    });
  };
  return data_penduduk;
};
