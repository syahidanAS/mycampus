'use strict'
var express = require('express');
var auth = require('./auth');
var router = express.Router();
var verifikasi =  require('./verifikasi');
var controller = require('../controller');


router.post('/api/v1/register', auth.registrasi);
router.post('/api/v1/login', auth.login);

//url yang perlu otorisasi
router.get('/api/v1/rahasia', verifikasi(), controller.showAllStudent);

module.exports = router;