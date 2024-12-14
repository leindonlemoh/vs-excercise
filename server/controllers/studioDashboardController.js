const { parse } = require("dotenv");
const mysql = require("mysql2");

const db = mysql.createConnection({
  host: process.env.DATABASE_HOST,
  port: process.env.DATABASE_PORT,
  user: process.env.DATABASE_USER,
  password: process.env.DATABASE_PASSWORD,
  database: process.env.DATABASE,
});

// exports.getAll = async(req,res)=>{
// db.query(`SELECT * , studio_performance_data.studio_id , studios_fields.id
// FROM studio_performance_data INNER JOIN studios_fields
// ON studio_performance_data.studio_id = studios_fields.id`,(err, result)=>{
//   if(err){
//     return console.log(err.message)
//   }
//   return res.status(200).json(result)
// })
// }

exports.fetch = (req, res) => {
  db.query(`SELECT * , studio_performance_data.studio_id , studios_fields.id
FROM studio_performance_data INNER JOIN studios_fields
ON studio_performance_data.studio_id = studios_fields.id`, (err, result) => {
    if (err) {
      return console.log(err.message);
    }
    return res.status(200).json(result);
  });
};