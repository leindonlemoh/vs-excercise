const express = require("express");
const router = express.Router();

const studioDashboardController = require("../controllers/studioDashboardController")

// router.post("/addPerformance/:id", studioPerformanceDataController.addPerformace);
router.get("/", studioDashboardController.fetch);
router.get("/fetchByUniqueCol", studioDashboardController.fetchByUniqueCol);
// router.get("/:id", studioPerformanceDataController.getPerformance);
// router.get("/getById/:id", studioPerformanceDataController.getPerformanceId);
// router.post("/:id", studioPerformanceDataController.delete);

module.exports = router;