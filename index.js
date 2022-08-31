const express = require('express');

const app = express();

app.get('/', (req, res) => {
  res.send('🐳 nodejs 도커 예제 🐳');
});

app.listen(8080, () => console.log('Server is running 🤖'));
