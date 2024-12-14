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


exports.fetchByUniqueCol = (req, res) => {
  db.query(`SELECT 
    studio_performance_data.studio_id,
    studio_performance_data.start_date, 
    studio_performance_data.end_date, 
    studio_performance_data.filter_type, 
    studio_performance_data.campaign_type, 
    studio_performance_data.cpl, 
    studio_performance_data.fb_budget, 
    studio_performance_data.google_budget, 
    studio_performance_data.cac_value, 
    studio_performance_data.fb_ad_lead, 
    studio_performance_data.non_fb_ad_lead, 
    studio_performance_data.no_intro_sale, 
    studio_performance_data.rollover_mem_sold, 
    studio_performance_data.weekly_cancel, 
    studio_performance_data.attendance, 
    studio_performance_data.seven_day_revenue, 
    studio_performance_data.average_members, 
    studio_performance_data.paused_members, 
    studio_performance_data.lead_details, 
    studios_fields.* 
FROM studio_performance_data
INNER JOIN studios_fields
ON studio_performance_data.studio_id = studios_fields.id

`, (err, result) => {
    if (err) {
      return console.log(err.message);
    }
    return res.status(200).json(result);
  });
};