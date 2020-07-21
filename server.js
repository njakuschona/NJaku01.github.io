const express = require('express');

const app = express();


app.use("/public", express.static(__dirname + '/public'))

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html')
})

app.get('/2', (req, res) => {
    res.sendFile(__dirname + '/index2.html')
})

app.get('/hello', (req, res) => {
    res.send('Hello World')
})




const port = 3000;

app.listen(port,
    () => console.log(`Example app listening at http://localhost:${port}`)
)
