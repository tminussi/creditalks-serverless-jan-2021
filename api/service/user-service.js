const AWS = require("aws-sdk");
AWS.config.update({region: process.env.AWS_REGION});
const userTable = process.env.DYNAMODB_USERS_TABLE
const { v4: uuidv4 } = require('uuid');

const ddb = new AWS.DynamoDB.DocumentClient();

const inserir = async (user) => {
    const id = uuidv4();
    await ddb.put({
        TableName: userTable,
        Item: {
            id,
            nome: user.nome,
            email: user.email,
            cpf_cnpj: user.cpf_cnpj
        }
    }).promise()
    return {
        id,
        nome: user.nome,
        email: user.email,
        cpf_cnpj: user.cpf_cnpj
    }
}

const listar = async () => {
    const response = await ddb.scan({
        TableName: userTable
    }).promise();
    return response.Items
}

module.exports = {
    inserir,
    listar
}