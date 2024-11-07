const functions = require("firebase-functions");
const admin = require("firebase-admin");
const { Storage } = require("@google-cloud/storage");
const vision = require("@google-cloud/vision");
// To avoid deployment errors, do not call admin.initializeApp() in your code

const storage = new Storage();
const visionClient = new vision.ImageAnnotatorClient();
exports.processAadhaarImage = functions.https.onCall(async (data, context) => {
  const imageUrl = data.imageUrl;
  // Write your code below!
  if (!imageUrl) {
    throw new functions.https.HttpsError(
      "invalid-argument",
      "The image URL is required.",
    );
  }

  // Call the Cloud Vision API to analyze the image from the provided URL.
  const [result] = await visionClient.textDetection({
    source: { imageUri: imageUrl },
  });
  const textAnnotations = result.textAnnotations;
  if (!textAnnotations || textAnnotations.length === 0) {
    throw new functions.https.HttpsError(
      "invalid-argument",
      "No text found in the image.",
    );
  }

  // Parse the extracted text to retrieve Aadhaar details.
  const text = textAnnotations[0].description;
  const aadhaarDetails = parseAadhaarDetails(text);

  return aadhaarDetails;
});
