const express = require('express');
var bodyParser = require('body-parser');
const app = express();
var morgan = require('morgan');
var cors = require('cors')



const port = 3000;

app.use(cors())
// for parsing application/json
app.use(bodyParser.json()); 

// for parsing application/xwww-
app.use(bodyParser.urlencoded({ extended: true })); 
//form-urlencoded

// for parsing multipart/form-data
// app.use(upload.array()); 
// app.use(express.static('public'));


app.use(morgan('dev'));

//Panggil router
var router = require('./router');
router(app);

//daftarkan router dari index auth
app.use('/auth', require('./middleware'))



app.listen(port, () => {
    console.log(`Listening at http://localhost:${port}`);
}); 