const admin = require("firebase-admin/app");
admin.initializeApp();

const processAadhaarImage = require("./process_aadhaar_image.js");
exports.processAadhaarImage = processAadhaarImage.processAadhaarImage;
