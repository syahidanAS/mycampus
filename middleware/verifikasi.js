const jwt = require('jsonwebtoken');
const { restart } = require('nodemon');
const config = require('../config/secret');

function verifikasi(){
    return function(req, res, next){
        var role = req.body.role;
        //cek authorization header
        var tokenWithBearer = req.headers.authorization;
        if(tokenWithBearer){
            var token = tokenWithBearer.split(' ')[1];
            //verifikasi
            jwt.verify(token, config.secret, function(error, decoded){
                if(error){
                    return res.status(401).send({auth:false, message:'Token invalid'});
                }else{
                    if(role == 2){
                        req.auth = decoded;
                        next();
                    }else if(role == 3){
                        return res.status(200).send({auth:false, message:'Hai Role 3! :)'});
                    }else{
                        return res.status(401).send({auth:false, message:'Role invalid'});
                    }
                }
            });
        }else{
            return res.status(401).send({auth:false, message:'Token is empty!'});
        }
    }
}

module.exports = verifikasi;