var connection = require('../koneksi');
var mysql = require('mysql');
var md5 = require('MD5');
var response = require('../res');
var jwt = require('jsonwebtoken');
var config = require('../config/secret');
var ip = require('ip');
const { format } = require('../koneksi');

//controller untuk registrasi
exports.registrasi = function(req,res){
    var post = {
        username: req.body.username,
        email: req.body.email,
        password: md5(req.body.password),
        role: req.body.role,
        tanggal_daftar: new Date()
    }

    //pengecekkan email
    var query = "SELECT email FROM ?? WHERE ??=?";
    var table = ["users","email", post.email];

    query = mysql.format(query, table);

    connection.query(query, function(error, rows){
        if(error){
            console.log(error);
        }else{
            if(rows.length == 0){
                var query = "INSERT INTO ?? SET ?";
                var table = ["users"];
                query = mysql.format(query, table);
                connection.query(query, post, function(error, rows){
                    if(error){
                        console.log(error);
                    }else{
                        response.ok("Berhasil Registrasi!", res);
                    }
                });
            }else{
                response.ok("Email sudah digunakan!", res);
            }
        }
    })
}


//Controller untuk login
exports.login = function(req,res){
    var post = {
        password: req.body.password,
        email: req.body.email
   }
    var query = "SELECT * FROM ?? WHERE ??=? and ??=?";
    var table = ["users", "password", md5(post.password), "email", post.email];

    query = mysql.format(query, table);

    connection.query(query, function(error, rows){
        if(error){
            console.log(error);
        }else{
            if(rows.length == 1){
                var token = jwt.sign({rows}, config.secret, {
                    expiresIn: 1440
                });
                id_user =  rows[0].id;

                var data = {
                    id_user: id_user,
                    access_token: token,
                    ip_address: ip.address()
                }


                var query = "INSERT INTO ?? SET ?";
                var table = ["akses_token"];

                query = mysql.format(query, table);
                connection.query(query, data, function(error, rows){
                    if(error){
                        console.log(error);
                    }else{
                         res.json({
                             success: true,
                             message: 'JWT token is generated!',
                             token:token,
                             currUser: data.id_user
                         });
                    }
                });
            }else{
                res.json({
                    "Error":true,
                    "Message": "Akun tidak terdaftar!"
                });
            }
        }
    });
}


exports.halamanRahasia = function(req,res){
    response.ok("Halaman ini hanya untuk user dengan role 2", res);
}