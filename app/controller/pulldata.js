const knex = require('../config/database')
const fetch = require('node-fetch');


exports.fetchDataAndSendToAPI = async (req, res) => {

    try {
        var rechDat = await knex('rech_req').where('status', 0).first();
        if (rechDat) {

            // var fullUrl = "http://localhost:8989/process/" + rechDat.id;
            //var fullUrl = "http://localhost:8989/" + rechDat.id;
            
            var fullUrl = "http://localhost/receive.php";


            const response = await fetch(fullUrl, {
                method: 'get',
                headers: { 'Content-Type': 'application/json' }
            });

            var data = await response.json();
            console.log(data);

            if (data.result) {
                await knex('rech_req').where('id', rechDat.id).update({ status: 1 });
                await exports.fetchDataAndSendToAPI(req, res);
            } else {
                await exports.fetchDataAndSendToAPI(req, res);
            }

        }else{
            res.json({"result": "No more data found to disburse"});
        }
    } catch (error) {
        console.error('Error occurred while sending data to API:', error);
    }
}


// const INTERVAL_TIME = 5000;
// setInterval(this.fetchDataAndSendToAPI, INTERVAL_TIME);