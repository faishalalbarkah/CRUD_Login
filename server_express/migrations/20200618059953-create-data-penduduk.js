"use strict";
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable("data_penduduks", {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      no_kk: {
        type: Sequelize.INTEGER,
      },
      nik: {
        type: Sequelize.INTEGER,
      },
      nama_lengkap: {
        type: Sequelize.STRING,
      },
      id_hbkel: {
        type: Sequelize.INTEGER,
        allowNull: false,
        references: {
          model: "hubungan_keluargas",
          key: "id",
        },
        onUpdate: "cascade",
        onDelete: "cascade",
      },
      no_rt: {
        type: Sequelize.INTEGER,
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE,
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE,
      },
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable("data_penduduks");
  },
};
