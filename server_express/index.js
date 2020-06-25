//instantiate express module
const express = require("express");
require("express-group-routes");
//init bodyparser
const bodyParser = require("body-parser");
const expressJwt = require("express-jwt");
const { authenticated } = require("./middleware");
//use express in app variabel
const app = express();
// app.use(cors());
//define the server port
const port = 5000;

//allow this app to receive incoming json request
app.use(bodyParser.json());

app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "*");
  res.header("Access-Control-Allow-Methods", "*");
  next();
});

//create thehomepage route
app.get("/", (req, res) => {
  //res mans, response, and it send string "hello Express" to the API
  res.send("Hallo Express");
});

//Import Controller
const LoginController = require("./controllers/login");
const CRUDController = require("./controllers/crud");

//Set Router
app.group("/api/v3", (router) => {
  router.post("/login", LoginController.index);
  router.post("/create", authenticated, CRUDController.created);
  router.get("/get", authenticated, CRUDController.read);
  router.patch("/patch/:id", authenticated, CRUDController.updateData);
  router.delete("/delete/:id", authenticated, CRUDController.destroy);
});
//when this nodejs app executed, it will listen to defined port
app.listen(port, () => console.log(`Listening on port ${port}!`));
