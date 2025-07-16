const express=require('express');


const loginController = require('../ControllerFunction/loginController');
const createpassword = require('../ControllerFunction/createPassword');
const AuthController = require('../ControllerFunction/AuthController');
const addVolunteer = require('../ControllerFunction/AddVolunteer');
const getVolunteer = require('../ControllerFunction/getVolunteer');
const deleteController = require('../ControllerFunction/deleteVolunteer');
const updateVolunteer = require('../ControllerFunction/UpdateVolunteer');

const historyController = require('../ControllerFunction/History');
const viewReport = require('../ControllerFunction/ViewReports');
const sosViewer = require('../ControllerFunction/ViewSos');

const modAuthController = require('../ControllerFunction/changepassword');
const changepassword = require('../ControllerFunction/changepassword');
const changepassword2 = require('../ControllerFunction/changepassword2');
const resolveSos = require('../ControllerFunction/ResolveSos');

const userRouter=express.Router();


userRouter.patch("/UpdateVolunteer",updateVolunteer)
userRouter.post("/resolvesos/:id",resolveSos)
userRouter.post("/addVolunteer",addVolunteer)
userRouter.delete("/deleteVolunteer",deleteController)
userRouter.put("/updateVolunteer", updateVolunteer)
userRouter.patch("/changepassword",changepassword2)
userRouter.get("/login",(req,res)=>{
    res.render("login.ejs")
})
userRouter.get("/view",AuthController,(req,res)=>{
    res.render("homepage.ejs")
})

userRouter.get("/volunteers",AuthController,getVolunteer)
userRouter.get("/history",AuthController,historyController)
userRouter.get("/history/reports/:id",AuthController,viewReport)
userRouter.get("/history/sos/:id",AuthController,sosViewer)
userRouter.get("/changepassword",AuthController,changepassword)
userRouter.post("/login-user",loginController)
//the below 2 routes were just for creating encrypted password in the database , unimportant routes 

userRouter.get("/register",(req,res)=>{
        res.render("register.ejs")
    })
    userRouter.post("/createpassword",createpassword)
    
    // userRouter.get("/register",(req,res)=>{
        
    //     res.render("register.ejs")
    // })
    module.exports=userRouter;