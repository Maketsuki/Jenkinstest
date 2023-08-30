const express = require("express");
const path = require("path");
const cors = require("cors"); // Import the package

const app = express();

// Enable CORS for all routes
app.use(cors());

// Serve static files from React
app.use(express.static(path.join(__dirname, "../client/build")));

app.get("/api", (req, res) => {
  res.json({ message: "Hello from server!" });
});

// Send all other requests to React app
app.get("*", (req, res) => {
  res.sendFile(path.join(__dirname, "../client/build/index.html"));
});

const port = process.env.PORT || 5000;
app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
