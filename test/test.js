'use strict';

var request = require("supertest"),
    app = require("../app").getApp;

descibe('GET /', function(){
    it('expects HTTP response 200', function(done){
        request(app)
        .get('/')
        .expect(200, done);
    });
});