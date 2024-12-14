const { parse } = require("dotenv");
const mysql = require("mysql2");

const db = mysql.createConnection({
  host: process.env.DATABASE_HOST,
  port: process.env.DATABASE_PORT,
  user: process.env.DATABASE_USER,
  password: process.env.DATABASE_PASSWORD,
  database: process.env.DATABASE,
});

// post
exports.addPerformace = async (req, res) => {
  const id = req.params.id;
  const {  
start_date , 
end_date , 
filter_type , 
campaign_type , 
cpl ,
fb_budget , 
google_budget ,
cac_value , 
fb_ad_lead , 
non_fb_ad_lead , 
no_intro_sale , 
rollover_mem_sold , 
weekly_cancel , 
attendance , 
seven_day_revenue , 
average_members , 
paused_members , 
lead_details , 
status , 
created_by , 
updated_by , 
deleted_by , 
deleted_at
 } = req.body;
console.log(req.body)


  const budget = parseFloat(fb_budget);
  const fbAdLeads = parseFloat(fb_ad_lead);
  const nonFbAdLeads = parseFloat(non_fb_ad_lead);

const totalLead = fbAdLeads + nonFbAdLeads;
const totalCPL = budget / totalLead



    db.query(
      "INSERT INTO studio_performance_data SET ?",
      {
  studio_id :parseInt(id) ,
start_date :start_date ,
end_date :end_date ,
filter_type :filter_type ,
campaign_type :campaign_type ,
cpl : totalCPL || null,
fb_budget :budget || null,
google_budget :google_budget ,
cac_value :cac_value ,
fb_ad_lead :fbAdLeads || null,
non_fb_ad_lead :nonFbAdLeads || null ,
no_intro_sale : no_intro_sale ,
rollover_mem_sold :rollover_mem_sold ,
weekly_cancel :weekly_cancel ,
attendance :attendance ,
seven_day_revenue :seven_day_revenue ,
average_members :average_members ,
paused_members :paused_members ,
lead_details :lead_details ,
status :status ,
created_by : created_by ,
updated_by :updated_by ,
deleted_by :deleted_by ,
deleted_at :deleted_at
      },
      (err) => {
        if (err) {
          return console.log(err.message);
        }
        console.log("Registration sucessful");
        res.send("Success");
      }
    );
  ;
};

// get
exports.fetch = (req, res) => {
  db.query(`SELECT * FROM studios.studio_performance_data`, (err, result) => {
    if (err) {
      return console.log(err.message);
    }
    return res.status(200).json(result);
  });
};

// get performance
exports.getPerformance = (req, res) => {
  const id = req.params.id;
  db.query(`Select * FROM studio_performance_data WHERE studio_id = ?`, id, (err, result) => {
    if (err) {
      return console.log(err.message);
    }
    return res.status(200).json(result);
  });
};

exports.getPerformanceId = (req, res) => {
  const id = req.params.id;
  db.query(`Select * FROM studio_performance_data WHERE id = ?`, id, (err, result) => {
    if (err) {
      return console.log(err.message);
    }
    return res.status(200).json(result);
  });
};

exports.delete = (req,res)=>{


  const {deleted_at, deleted_by, id} = req.body;

  console.log(req.body, deleted_at, deleted_by)
db.query(
  `UPDATE studio_performance_data 
  SET deleted_at = ?, deleted_by = ? 
  WHERE id = ${id}`,
  [deleted_at, deleted_by, id],
  (err) => {
    if (err) {
      return console.log(err.message);
    }
    return res.status(200).json({ message: "Info updated successfully" });
  }
);
}