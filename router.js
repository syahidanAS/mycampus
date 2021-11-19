'use strict'

module.exports = function(app){
    var myJson = require('./controller')

    app.route('/')
        .get(myJson.index);
    app.route('/mahasiswa')
        .get(myJson.showAllStudent);
    app.route('/mahasiswa/:id')
        .get(myJson.showStudentById);
    app.route('/mahasiswa')
        .post(myJson.addStudent);
    app.route('/mahasiswa')
        .put(myJson.updateStudent);
    app.route('/mahasiswa')
        .delete(myJson.deleteStudent);
    app.route('/krs/:id')
        .get(myJson.tampilGroupMatakuliah);

}