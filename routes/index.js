const express = require('express');
const router = express.Router();
const path = require('path');
const sql = require('../utils/sql');

/* GET home page. */
router.get('/', function(req, res, next) {
  //res.render('index', { title: 'Express' });
  console.log('sent back a static file');
  res.sendFile((path.join(__dirname, "../views/index.html")));
});

router.get('/db_dogbreeds/:target', (req, res) => {
  //here is where we set up the query
  let query = `SELECT * FROM tbl_dogstats WHERE id="${req.params.target}"`;

  sql.query(query, (err, result) => {
    if (err) { console.log(err); } //something broke

    console.log(result); //this should be the database row

    res.json(result[0]); //send that row back to the calling function
  })
})

module.exports = router;
