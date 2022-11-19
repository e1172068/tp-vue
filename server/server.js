const express= require("express")
const app = express()
const bodyParser = require("body-parser")
const cors = require("cors")
const corsOption = {
    origin: "http://localhost:8081"
}

app.use(cors(corsOption))

const db = require("./app/models")
db.connex.sync()

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true }))

//test
app.get('/', (req, res) => {
    res.json({message: 'Welcome'})
})

require("./app/routes/product.route")(app)
const PORT = 8080
app.listen(PORT, () => {
    console.log(`Le serveur est lancé et écoute sur le port ${PORT}`)
})