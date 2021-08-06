require('dotenv').config();
const express = require('express');
const app = express();
const customerRouter = require('./api/customer/customer.router');

const cors = require('cors');
app.use(cors({
    origin: 'http://127.0.0.1:8000'
}));


app.use(express.json());

app.use('/api/customer', customerRouter);
app.get("/api", (req, res) => {
    res.json({
        success: true,
        message: "This is rest api for Laravel Customer Management App"
    });
});

app.listen(process.env.APP_PORT, () => {
    console.log('Server up and running on Port: ' + process.env.APP_PORT);
});