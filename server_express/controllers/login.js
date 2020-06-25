const jwt = require("jsonwebtoken");
const model = require("../models");
const User = model.user;

exports.index = (req, res) => {
  const email = req.body.email;
  const password = req.body.password;

  User.findOne({
    where: { email: email },
  }).then((login) => {
    if (login) {
      const token = jwt.sign({ userId: login.id }, "my-secret-key");
      res.send({
        message: "Success",
        email: login.email,
        token,
      });
    } else {
      res.send({ error: true, message: "Wrong Email or Password" });
    }
  });
};
