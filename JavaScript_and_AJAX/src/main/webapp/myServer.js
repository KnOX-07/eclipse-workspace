const express = require("express");
const bodyParser = require("body-parser");
const mysql = require("mysql2");

const app = express();
const PORT = 5000;

app.use(bodyParser.json());

const db = mysql.createConnection({
  host: "localhost", 
  user: "root",
  password: "Rupal@db123", 
  database: "user_db"
});

db.connect((err) => {
  if (err) {
    console.error("Error connecting to MySQL database:", err);
  } else {
    console.log("Connected to MySQL database...");
  }
});

app.post('/login', (req, res) => {
  const { username, password } = req.body;

  const query = "SELECT * FROM users WHERE username = ? AND password = ?";
  db.query(query, [username, password], (err, results) => {
    if (err) {
      console.error(err);
      res.status(500).json({ message: "Server error!" });
    } else if (results.length > 0) {
      res.json({ message: "Login successful!" });
    } else {
      res.json({ message: "Login failed: Invalid username or password." });
    }
  });
});

app.get('/', (req, res) => {
  res.sendFile(__dirname + '/UserValidation.html');
});

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});