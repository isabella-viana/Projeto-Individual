var express = require("express");
var router = express.Router();

var dashController = require("../controllers/dashController");

router.get("/puxarGrafico/:idUsuario", function (req, res) {
    dashController.listar(req, res);
});

router.post("/gerarGrafico/:idUsuario", function (req, res) {
    dashController.publicar(req, res);
});


module.exports = router;