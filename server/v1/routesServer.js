'use strict';

module.exports = register;

function register(server, connection) {
    server.route({
        path: '/hello/{user}',
        method: 'GET',
        handler: function (request, reply) {
            reply('Hello World ' + request.params.user + '!');
        }
    });

    server.route({
        path: '/user',
        method: 'GET',
        handler: function (request, reply) {
            connection.query('SELECT * FROM user', function (err, rows) {
                reply(rows);
            });
        }
    });

    server.route({
        path: '/user/login',
        method: 'POST',
        handler: function (request, reply) {
            var password = request.payload.password;
            var email = request.payload.email;
            console.log('Receving new User:"' + email + '" and password :"' + password + '"');
            var query = 'SELECT * FROM user WHERE email = "' + email + '" and password = "' + password + '"';
            console.log(query);

            connection.query(query, function (err, rows) {
                console.log(rows[0]);
                reply(rows[0]);
            });
        }
    });

        server.route({
        path: '/user/login/secure',
        method: 'POST',
        handler: function (request, reply) {
            var password = request.payload.password;
            var email = request.payload.email;
            console.log('Receving new User:"' + email + '" and password :"' + password + '"');
            var query = 'SELECT * FROM user WHERE email = ? and password = ?';
            console.log(query);

            connection.query(query,[email,password], function (err, rows) {
                console.log(rows[0]);
                reply(rows[0]);
            });
        }
    });

            server.route({
        path: '/user/add',
        method: 'POST',
        handler: function (request, reply) {
            var name = request.payload.name;
            var email = request.payload.email;
            var password = request.payload.password;
            console.log('Receving new User:"' + email + '" and password :"' + password + '"and Name :"'+name+"'");
            var query = 'INSERT INTO user(name,email,password) VALUES ("' + name + '","' + email + '","' + password + '")';
            console.log(query);
            connection.query(query, function (err, results) {
                console.log(err);
                console.log(results);
            });        
        }
    });


    function insertUser() {
        for (var i = 0; i < 50; i++) {
            var name = 'User' + i;
            var email = 'user' + i + '@gmail.com';
            var password = 'password' + i;
            var query = 'INSERT INTO user(name,email,password) VALUES ("' + name + '","' + email + '","' + password + '")';
            console.log(query);
            connection.query(query, function (err, results) {
                console.log(err);
                console.log(results);
            });
        }
    };
    //insertUser();
};