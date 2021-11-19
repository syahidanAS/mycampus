'use strict'

var response = require('./res');
var connection = require('./koneksi');

exports.index = function(req, res){
    response.ok("Sukse", res);
}

//Menampilkan semua data mahasiswa
exports.showAllStudent = function(req, res){
    connection.query('SELECT * FROM mahasiswa ORDER BY id_mahasiswa DESC', function(error, data, fields){
        if(error){
            console.log(error);
        }else{
            response.ok(data, res)
        }
    });
};

//Menampilkan data mahasiswa berdasarkan id
exports.showStudentById = function(req, res){
    let id = req.params.id;
    connection.query('SELECT * FROM mahasiswa WHERE id_mahasiswa = ?', [id],
        function(error,data,fields){
            if(error){
                console.log(error);
            }else{
                response.ok(data, res);
            }
        }
    )
}

//Menambahkan data mahasiswa
exports.addStudent = function(req,res){
    var nim = req.body.nim;
    var nama = req.body.nama;
    var jurusan = req.body.jurusan;

    connection.query('INSERT INTO mahasiswa(nim,nama,jurusan) VALUES(?,?,?)', [nim,nama,jurusan],
        function(error, data, fields){
            if(error){
                console.log(error);
            }else{
                res.status(201);
                response.dataSaved("Berhasil menambahkan data!", res);
            }
        }    
    )
}

//Mengubah data mahasiswa
exports.updateStudent = function(req,res){
    var nim = req.body.nim;
    var nama = req.body.nama;
    var jurusan = req.body.jurusan;

    var id = req.body.id_mahasiswa;

    connection.query('UPDATE mahasiswa SET nim=?, nama=?, jurusan=? WHERE id_mahasiswa=?', [nim,nama,jurusan,id],
        function(error,data,fields){
            if(error){
                console.log(error);
            }else{
                res.status(200);
                response.ok("Berhasil mengubah data!", res);
            }
        }
    )
}

//Menghapus data mahasiswa
exports.deleteStudent = function(req,res){
    var id = req.body.id;

    connection.query('DELETE FROM mahasiswa WHERE id_mahasiswa=?',[id],
        function(error,data,fields){
            if(error){
                console.log(error);
            }else{
                res.status(200);
                response.ok("Berhasil menghapus data!", res);
            }
        }
    )
}

//Menampilkan KRS
exports.tampilGroupMatakuliah = function(req,res){
    var id = req.params.id;
    connection.query('SELECT mahasiswa.id_mahasiswa,mahasiswa.nim,mahasiswa.nama,mahasiswa.jurusan,matakuliah.matakuliah FROM krs JOIN matakuliah JOIN mahasiswa WHERE krs.id_matakuliah=matakuliah.id_matakuliah AND krs.id_mahasiswa=mahasiswa.id_mahasiswa AND mahasiswa.id_mahasiswa=? ORDER BY mahasiswa.id_mahasiswa',[id],
        function(error,data,fields){
            if(error){
                console.log(error);
            }else{
                res.status(200);
                response.oknested(data,res);
            }
        }
    )
}