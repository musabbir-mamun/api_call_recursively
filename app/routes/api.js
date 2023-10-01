const express = require('express');
const router = express.Router();

const pulldata = require("../controller/pulldata");

router.get("/fetchDataAndSendToAPI", pulldata.fetchDataAndSendToAPI);


module.exports = router;
