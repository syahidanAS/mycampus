'use strict';

exports.ok = function(values, res){
    var data = {
        'status' : 200,
        'message': "ok",
        'values' : values
    };

     res.json(data);
     res.end();
}

exports.notFound = function(values, res){
    var data = {
        'status' : 404,
        'message': "Data Not Found!"
    };

     res.json(data);
     res.end();
}

exports.dataSaved = function(values, res){
    var data = {
        'status' : 201,
        'message': "ok",
        'values' : values
    };

     res.json(data);
     res.end();
}

//Respon untuk nested KRS
exports.oknested = function(values,res){
    //lakukan akumulasi
    const hasil = values.reduce((akumulasikan, item)=>{
         //Tentukan key group
         if(akumulasikan[item.nama]){
             //buatlah variabel group nama mahasiswa
             const group = akumulasikan[item.nama];
             //cek jika isi array adalah matakuliah 
             if(Array.isArray(group.matakuliah)){
                 //tambahkan valuenya ke dalam group matakuliah
                 group.matakuliah.push(item.matakuliah);
             }else{
                 group.matakuliah = [group.matakuliah, item.matakuliah];
             }
         }else{
             akumulasikan[item.nama] = item;
         }
         return akumulasikan;
    }, {});
    var data = {
        'status' : 200,
        'message': "ok",
        'values' : hasil
    };

    res.json(data);
    res.end();
}