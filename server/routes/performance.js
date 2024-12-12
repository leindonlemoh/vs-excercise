const express = require("express");
const router = express.Router();

const studioPerformanceDataController = require("../controllers/studioPerformanceDataController")

router.post("/addPerformance/:id", studioPerformanceDataController.addPerformace);
router.get("/", studioPerformanceDataController.fetch);
router.get("/:id", studioPerformanceDataController.getPerformance);
router.get("/getById/:id", studioPerformanceDataController.getPerformanceId);
router.post("/:id", studioPerformanceDataController.delete);

module.exports = router;