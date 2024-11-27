var express = require("express");
var router = express.Router();

var dashController = require("../controllers/dashController");

router.post("/gerarGrafico/:idUsuario", function (req, res) {
    dashController.salvarEmocoes(req, res);
});

module.exports = router;
