const express = require("express");
const userController = require('../controller/user-controller.js')

const router = express.Router();

router
  .route("/users")
  .get(userController.listAll)
  .post(userController.createuser);

module.exports = router;
