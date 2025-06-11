const express=require('express');
const bcrypt=require('bcrypt');


const userRouter=express.Router();

userRouter.get("/register",(req,res)=>{
    res.render("register.ejs")
})
userRouter.get("/login",(req,res)=>{
    res.render("login.ejs")
})
userRouter.get("/view",(req,res)=>{
    res.render("homepage.ejs")
})
userRouter.get("/volunteers",(req,res)=>{
    res.render("addvolunteers.ejs")
})
module.exports=userRouter;