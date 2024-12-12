const mysql = require("mysql2");
// const bcrypt = require("bcrypt");
const { v4: uuidv4 } = require('uuid');
const db = mysql.createConnection({
  host: process.env.DATABASE_HOST,
  port: process.env.DATABASE_PORT,
  user: process.env.DATABASE_USER,
  password: process.env.DATABASE_PASSWORD,
  database: process.env.DATABASE,
});



// post
exports.add = async (req, res) => {
  const uuid = uuidv4();
  const { 
		business_type,
		franchise_id,
		name,
		address,
		time_zone,
		country,
		country_code,
		currency_symbol,
		currency_text,
		logo,
		logo_url,
		country_id,
		status,
		owner_id,
		primary_contact_user_id,
		plan_id,
		updated_discount_code,
		subs_expired,
		restricted_access,
		next_due_date,
		has_mb_account,
		is_mb_skipped,
		mb_account_type,
		cron_status,
		cron_last_updated,
		deleted_at,
		deleted_by,
		created_by  } = req.body;

    db.query(
      "INSERT INTO studios_fields SET ?",
      {
        	uuid : uuid,
business_type : business_type,
		franchise_id : 		franchise_id,
name : name,
address : address,
time_zone : time_zone,
country : country,
country_code : country_code,
currency_symbol : currency_symbol,
currency_text : currency_text,
logo : logo,
logo_url : logo_url,
country_id : country_id,
status : parseInt(status),
owner_id : owner_id,
primary_contact_user_id : primary_contact_user_id,
plan_id : plan_id,
updated_discount_code : updated_discount_code,
subs_expired : subs_expired,
restricted_access : restricted_access,
next_due_date : next_due_date,
has_mb_account : has_mb_account,
is_mb_skipped : is_mb_skipped,
mb_account_type : mb_account_type,
cron_status : cron_status,
cron_last_updated : cron_last_updated,
deleted_at : deleted_at,
deleted_by : 4,
created_by : 4,
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

// get list
exports.fetch = (req, res) => {
  db.query(`SELECT * FROM studios.studios_fields`, (err, result) => {
    if (err) {
      return console.log(err.message);
    }
    return res.status(200).json(result);
  });
};
// get studio
exports.getStudio = (req, res) => {
  const id = req.params.id;
  db.query(`Select * FROM studios_fields WHERE id = ?`, id, (err, result) => {
    if (err) {
      return console.log(err.message);
    }
    return res.status(200).json(result);
  });
};

//update
exports.update = (req, res) => {
  // const id = req.params.id;
  const {business_type, name,
		address,country, status,id} = req.body;
    console.log(req.body)
  db.query(
    `UPDATE studios_fields
SET business_type = ?,  name = ?, address = ?, country = ?,status=? 
WHERE id = ${id}`,
    [business_type, name,
		address,country, status],
    (err) => {
      if (err) {
        return console.log(err.message);
      }

      return res.status(200).json({ message: "Info updated successfully" });
    }
  );
};

// delete-update deleted at
exports.delete = (req,res)=>{

  const {deleted_at, deleted_by, id} = req.body;

  console.log(req.body, deleted_at, deleted_by)
db.query(
  `UPDATE studios_fields 
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