/*
 * @Author: 可以清心
 * @Description: 
 * @Date: 2023-09-22 14:38:27
 * @LastEditTime: 2023-09-22 14:48:55
 */
const express = require('express');
const app = express();


app.get('/', function (req, res) {
    res.send('Hello, Node.js and Docker');
});

app.listen(30000);

console.log('Server is running on 30000');