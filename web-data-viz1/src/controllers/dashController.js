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

module.exports = {
    salvarEmocoes
};
