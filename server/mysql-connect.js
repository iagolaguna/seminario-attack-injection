import mysql from 'mysql';

var connection = mysql.createConnection({
    database: "sql-injection",
    user : "root",
    password : ""
});

connection.connect(function(err) {
  if (err) {
    console.error('error connecting: ' + err.stack);
    return;
  }

  console.log('connected as id ' + connection.threadId);
});

export default connection;