const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send( {message: "Welcome to my server. Stay tuned for more features."} );
})

app.listen(port, () => console.log(`The Server is running on port ${port}.`));
