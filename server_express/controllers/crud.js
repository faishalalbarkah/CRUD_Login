const model = require("../models");
const Data_Penduduk = model.data_penduduk;
const Hubungan_Keluarga = model.hubungan_keluarga;

exports.created = (req, res) => {
  const Data = {
    no_kk: req.body.no_kk,
    nik: req.body.nik,
    nama_lengkap: req.body.nama_lengkap,
    id_hbkel: req.body.id_hbkel.id,
    no_rt: req.body.no_rt,
  };
  const Dated = Data_Penduduk.create(Data);
  if (Dated) {
    res.status(200).send({
      status: 200,
      message: "Success",
    });
  } else {
    res.status(404).send({
      status: 404,
      message: "No Data",
    });
  }
};

exports.read = (req, res) => {
  Data_Penduduk.findAll({
    attributes: ["id", "no_kk", "nik", "nama_lengkap", "no_rt"],
    include: { model: Hubungan_Keluarga, attributes: ["stat_hbkel"] },
  }).then((Data) => {
    if (Data_Penduduk) {
      res.status(200).send({
        status: 200,
        message: "Success",
        Data,
      });
    } else {
      res.status(404).send({
        status: 404,
        message: "No data",
      });
    }
  });
};

exports.updateData = (req, res) => {
  const idData = req.params.id;

  const resultUpdate = Data_Penduduk.update(req.body, {
    where: { id: idData },
  });

  res.status(200).send({
    status: 200,
    message: "Success",
  });
};

exports.destroy = (req, res) => {
  const data = Data_Penduduk.destroy({
    where: { id: req.params.id },
  });
  res.send({
    Msg: "SUccess",
  });
};
