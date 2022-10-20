import { Router } from 'express';

const routes = new Router();
// var initModels = require("../models/init-models");
// const sequelize = require('./config/database');
// var models = initModels(sequelize);


// สร้าง routing โดยใช้ HTTP GET 
routes.get("/", (req, res) => {
    const json = JSON.parse('{"test":"Hello World Marketplace"}');
    res.send(json);
});



export default routes;