var database = require("../database/config");

function salvarEmocoes(emocao, intensidade, idUsuario) {
    
    var instrucaoSql = `
         INSERT INTO emocoes (emocao, intensidade, fkUsuario) VALUES ('${emocao}', '${intensidade}', ${idUsuario});
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function mostrarEmocoes(emocao, intensidade, idUsuario) {
    
    var instrucaoSql = `
      SELECT 
         *
        FROM emocoes;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    salvarEmocoes,
    mostrarEmocoes,
    
}
