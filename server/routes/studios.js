const express = require("express");
const router = express.Router();
const studiosController = require("../controllers/studiosController");
const studioPerformanceDataController = require("../controllers/studioPerformanceDataController")

router.post("/register", studiosController.add);
router.get("/", studiosController.fetch);
router.get("/:id", studiosController.getStudio);
router.post("/:id", studiosController.update);
router.post("/:id/delete", studiosController.delete);



module.exports = router;