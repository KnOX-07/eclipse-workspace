const express = require("express");
const bodyParser = require("body-parser");
const fs = require("fs");
const xml2js = require("xml2js");

const app = express();
const PORT = 3000;

app.use(bodyParser.json());

app.post('/login', (req, res) => {
    const { username, password } = req.body;

    fs.readFile('users.xml', (err, data) => {
        if (err) {
            console.error(err);
            res.status(500).json({ message: "Server error!" });
            return;
        }

        xml2js.parseString(data, (err, result) => {
            if (err) {
                console.error(err);
                res.status(500).json({ message: "Server error!" });
                return;
            }

            const users = result.users.user;
            let isAuthenticated = false;

            users.forEach(user => {
                if (user.username[0] === username && user.password[0] === password) {
                    isAuthenticated = true;
                }
            });

            if (isAuthenticated) {
                res.json({ message: "Login successful!" });
            } else {
                res.json({ message: "Login failed: Invalid username or password." });
            }
        });
    });
});

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/Login.html');
});

app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}...`);
});