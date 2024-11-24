var mysql = require('mysql2');

const db = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'db_watch'
})
db.connect((err) => {
    if (err) throw err;
    console.log("Kết nối database thành công")
});

module.exports = db;