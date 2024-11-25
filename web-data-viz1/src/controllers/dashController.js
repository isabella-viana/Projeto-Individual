const { salvarEmocoes, mostrarEmocoes } = require("../models/dash");
var dashModel = require("../models/dashModel");

function puxarGrafico(req, res) {
    dashModel.listar().then(function (resultado) {
      
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar os avisos: ", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}




function mostrarEmocoes(req, res) {
    var emocao = []
        var intensidade = []

    dashModel.mostrarEmocoes(idPost)
        .then(
            function (resultado) {
                res.json(resultado);
            }
        )
        .catch(
            function (erro) {
                console.log(erro);
                console.log("Houve um erro ao deletar o post: ", erro.sqlMessage);
                res.status(500).json(erro.sqlMessage);
            }
        );
}

module.exports = {
    puxarGrafico,
    mostrarEmocoes
}