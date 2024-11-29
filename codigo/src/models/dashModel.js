var database = require("../database/config");

function salvarEmocoes(emocao, intensidade, idUsuario) {
    const instrucaoSql = `
    INSERT INTO emocoes (emocao, intensidade, fkUsuario, dataEmocao) 
    VALUES ('${emocao}', ${intensidade}, ${idUsuario}, NOW());
`;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function obterUltimasEmocoes(idUsuario) {
    const instrucaoSql = `
    SELECT emocao, intensidade, DATE_FORMAT(dataEmocao, '%H:%i:%s') AS horario
    FROM emocoes
    WHERE fkUsuario = ${idUsuario}
    ORDER BY dataEmocao DESC
    LIMIT 10;
`;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    salvarEmocoes,
    obterUltimasEmocoes
};