const express=require('express');

const ViewController = require('../ControllerFunction/ViewController');
const loginController = require('../ControllerFunction/loginController');
const createpassword = require('../ControllerFunction/createPassword');
const restrict=require("../ControllerFunction/restrictbackwards")

const userRouter=express.Router();

userRouter.get("/register",(req,res)=>{
    
    res.render("register.ejs")
})
userRouter.get("/login",restrict,(req,res)=>{
    res.render("login.ejs")
})
userRouter.get("/view",ViewController)

userRouter.get("/volunteers",(req,res)=>{
    res.render("addvolunteers.ejs")
})
userRouter.get("/history",(req,res)=>{
    res.render("history_and_analysis.ejs")
})

userRouter.post("/login-user",loginController)
//the below 2 routes were just for creating encrypted password in the database , unimportant routes 

// userRouter.get("/register",(req,res)=>{
//     res.render("register.ejs")
// })
// userRouter.post("/createpassword",createpassword)

module.exports=userRouter;