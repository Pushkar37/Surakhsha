const express=require('express');


const loginController = require('../ControllerFunction/loginController');
const createpassword = require('../ControllerFunction/createPassword');
const AuthController = require('../ControllerFunction/AuthController');
const addVolunteer = require('../ControllerFunction/AddVolunteer');
const getVolunteer = require('../ControllerFunction/getVolunteer');
const deleteController = require('../ControllerFunction/deleteVolunteer');
const updateVolunteer = require('../ControllerFunction/UpdateVolunteer');
const retriveData = require('../ControllerFunction/RetriveData');

const userRouter=express.Router();
userRouter.patch("/UpdateVolunteer",updateVolunteer)
userRouter.get("/volunteerdata",retriveData);
userRouter.post("/addVolunteer",addVolunteer)
userRouter.delete("/deleteVolunteer",deleteController)
userRouter.put("/updateVolunteer", updateVolunteer)
userRouter.get("/login",(req,res)=>{
    res.render("login.ejs")
})
userRouter.get("/view",AuthController,(req,res)=>{
    res.render("homepage.ejs")
})

userRouter.get("/volunteers",AuthController,getVolunteer)
userRouter.get("/history",AuthController,(req,res)=>{
    res.render("history_and_analysis.ejs")
})

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