const express = require('express');

const app = express();


app.use("/public", express.static(__dirname + '/public'))

app.use("/images", express.static(__dirname + '/images'))

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html')
})

const port = 3000;

app.listen(port,
    () => console.log(`Example app listening at http://localhost:${port}`)
)
