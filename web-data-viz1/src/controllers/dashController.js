var dashModel = require("../models/dashModel");

function salvarEmocoes(req, res) {
    const { emocao, intensidade } = req.body;
    const idUsuario = req.params.idUsuario;

    if (!emocao || !intensidade || !idUsuario) {
        res.status(400).send("Dados inválidos.");
        return;
    }

    emocao.map((e, i) =>
        dashModel.salvarEmocoes(e, intensidade[i], idUsuario)
    );
        
}
function obterRanking(req, res) {
    const idUsuario = req.params.idUsuario;

    if (!idUsuario) {
        res.status(400).send("ID do usuário não informado.");
        return;
    }

    dashModel.obterUltimasEmocoes(idUsuario)
        .then((resultados) => {
            if (resultados.length > 0) {
                res.status(200).json(resultados);
            } else {
                res.status(204).send("Nenhum registro encontrado.");
            }
        })
        .catch((erro) => {
            console.error(erro);
            res.status(500).json(erro);
        });
}

module.exports = {
    salvarEmocoes,
    obterRanking
};
