const express = require('express');
const add = require('./math');

const app = express();
const PORT = 8000;

app.get('/', (req, res) => {
    res.send(`Sum: ${add(2, 3)}`);
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
