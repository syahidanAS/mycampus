var mysql = require('mysql');

//buat koneksi database
const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'dbkampus'
});

conn.connect((err)=>{
    if(err) throw err;
    console.log("Berhasil terhubung dengan database!");
})

module.exports = conn;