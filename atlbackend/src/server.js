const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello, Local!');
});

app.listen(3000, () => {
  console.log('atlbackend listening on port 3000');
});