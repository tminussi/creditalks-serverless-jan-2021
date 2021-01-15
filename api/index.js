const serverless = require("serverless-http");
const express = require("express");
const bodyParser = require("body-parser");
const app = express();
const router = require("./routes");

app.use(bodyParser.json());
app.use("/api", router);

module.exports.handler = serverless(app);
