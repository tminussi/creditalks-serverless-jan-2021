const userService = require('../service/user-service');

const listAll = async (req, res) => {
    const users = await userService.listar();
    return res.json(users)
}

const createuser = async (req, res) => {
    const user = await userService.inserir(req.body)
    return res.status(201).json(user)
}

module.exports = {
    listAll,
    createuser
}